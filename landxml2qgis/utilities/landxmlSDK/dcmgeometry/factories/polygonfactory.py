import shapely.geometry as sg

try:
    from shapely.validation import make_valid

except ImportError:
    #import warnings
    #warnings.showwarning('Shapely > 1.8 not available, cant use make_valid, using 0 buffer instead',
    #                     category=ImportWarning)

    # create a method in here to do a psuedo make valid if shapely > 1.8 is not installed
    def make_valid(geometry):
        return geometry.buffer(0)

from utilities.landxmlSDK.dcmgeometry.arcs import ArcGeom
from utilities.landxmlSDK.dcmgeometry.arcs import LineGeom
from utilities.landxmlSDK.dcmgeometry.polygons import PolygonGeom
from utilities.landxmlSDK.landxml.landxml import IrregularLine, Curve
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_distance, calc_bearing
from utilities.landxmlSDK.geometryfunctions.otherfunctions import chunker


class PolygonGeomFactory:
    def __init__(self):
        self.lxml_data = None
        self.lines = None
        self.points = None
        self.lxml_polygons = {}
        # self.line_order = {}
        self.polygons = {}

    def handle_irregular_lines(self, line):
        # do i need do this here?
        pnt_list = line.PntList2D
        pnt_list_lookup = {(str(v.original_geom.y), str(v.original_geom.x)): k for k, v in self.points.items()}
        geom = [line.setup_point]
        if pnt_list is not None:
            ps = list(chunker(pnt_list.split(), 2))[1:-1]
            for pnt in ps:
                pn = (pnt[0], pnt[1])
                geom.append(self.points.get(pnt_list_lookup.get(pn)))
                if pnt_list_lookup.get(pn) is None:
                    geom.append(self.points.get(f'IR-{pnt[0]}-{pnt[1]}'))

        geom.append(line.target_point)
        geom = [x.geometry.coords[0] for x in geom]
        return geom

    def handle_missing_curves(self):
        pass

    @staticmethod
    def handle_inner_rings(line_order):

        if len(line_order) > 0:
            se = {}
            for item in line_order:
                
                start = item.setup_point.name
                end = item.target_point.name
                # start = item.Start.pntRef
                # end = item.End.pntRef
                se[(start, end)] = item
            nd = []
            for item in se:
                if (item[1], item[0]) not in se:
                    nd.append(item)
            groups = {nd[0][1]: [nd[0]]}
            for item in nd[:-1]:
                nxt = nd[nd.index(item) + 1]
                listed = groups.get(nxt[0], [])
                listed.append(nxt)
                groups[nxt[1]] = listed
                if nxt[0] in groups:
                    groups.pop(nxt[0])
            fg = {}
            c = 0
            for k, v in groups.items():
                vs = [se.get(i) for i in v]
                fg[f'ring-{c}'] = vs
                c += 1
            return fg
        else:
            return {}

    def get_poly_geom(self, crs):
        for polygon in self.lxml_polygons:

            if polygon.parcelType != 'Multipart':
                if (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is False:
                    f_poly = PolygonGeom(polygon, self.lines, points=self.points)

                    for c in polygon.Center:
                        f_poly.centre_point = c.pntRef
                        break
                    if polygon.parcelType == 'Part':
                        f_poly.part = True

                    if (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is True:
                        f_poly.part = True

                    if polygon.class_ == 'Easement':
                        f_poly.easement = True

                    p_geoms = {}
                    f_poly.polygon_points = set()
                    rings = self.handle_inner_rings(f_poly.line_order)

                    for k, lo in rings.items():
                        p_geom = []
                        count = 0
                        for line in lo:
                            count += 1
                            #sp = line.Start.pntRef
                            start = line.setup_point
                            sp = start.name
                            f_poly.polygon_points.add(sp)
                            #ep = line.End.pntRef
                            end = line.target_point
                            ep = end.name
                            f_poly.polygon_points.add(ep)

                            if start.point_type == 'natural boundary' or end.point_type == 'natural boundary' \
                                    and f_poly.contains_nat_bdy is False:
                                f_poly.contains_nat_bdy = True
                            if not isinstance(line, IrregularLine):
                                l_geom = self.lines.get((sp, ep))
                                if l_geom is None:
                                    l_geom = self.lines.get((ep, sp))

                                    if l_geom is not None:
                                        geom = list(reversed(l_geom.geometry.coords[:]))
                                    else:
                                        # shouldnt happen
                                        pass
                                else:
                                    geom = l_geom.geometry.coords[:]

                            else:
                                geom = self.handle_irregular_lines(line)

                            if count == 1:  # polygon == self.lxml_polygons[0]:
                                p_geom.append(geom[0])
                            p_geom += list(geom)[1:]

                        p_geoms[k] = p_geom

                    if len(p_geoms) > 0:
                        poly_geom = []
                        area = 0
                        if len(p_geoms) > 1:
                            for i in p_geoms.values():
                                na = sg.Polygon(i).area
                                if na > area:
                                    area = na
                                    poly_geom = i
                        else:
                            poly_geom = p_geoms.get('ring-0', [])

                        holes = [v for k, v in p_geoms.items() if v != poly_geom]
                        outer = poly_geom

                        # force the polygon shut
                        f_poly.valid_geom = True
                        if len(outer) > 1:
                            if outer[0] != outer[-1] and len(outer) > 2:
                                f_poly.valid_geom = False
                                f_poly.closed = False
                                outer.append(outer[0])
                            elif len(outer) == 2:
                                f_poly.valid_geom = False
                                f_poly.closed = False
                                outer.append(outer[0])

                        # fake the geometry here, who knows why victoria decided to have polygons with only one line...
                        elif len(outer) == 1:
                            f_poly.valid_geom = False
                            f_poly.closed = False
                            outer.append(outer[0])
                            outer.append(outer[0])

                        if len(holes) > 0:
                            f_poly.set_geometry(sg.Polygon(outer, holes=holes), points=self.points)
                        else:
                            f_poly.set_geometry(sg.Polygon(outer), points=self.points)
                        f_poly.crs = crs

                        # fix invalid geometry
                        if f_poly.geometry.is_valid is False and (outer[0] == outer[-1]) and len(outer) > 1:
                            f_poly.geometry = make_valid(f_poly.geometry)

                        self.polygons[f_poly.name] = f_poly

    def update_poly(self, rerun, polygon, crs):

        multi_geom = []
        f_poly = PolygonGeom(polygon)
        for child in polygon.Parcels:
            for b in child.Parcel:

                linked_poly = self.polygons.get(b.pclRef)
                if linked_poly is not None:
                    linked_poly.parent = f_poly.name
                    self.polygons[b.pclRef] = linked_poly
                    f_poly.children[b.pclRef] = linked_poly
                    if isinstance(linked_poly.geometry, sg.MultiPolygon):
                        for poly in linked_poly.geometry.geoms:
                            multi_geom.append(poly)
                    else:
                        multi_geom.append(linked_poly.geometry)
                    
                else:
                    rerun.add(polygon)

        if len(multi_geom) > 0:
            if polygon.class_ == 'Easement':
                f_poly.easement = True
            f_poly.geometry = sg.MultiPolygon(multi_geom)
            f_poly.multipart = True
            f_poly.crs = crs
            self.polygons[f_poly.name] = f_poly
        return rerun

    def get_multi_polygons(self, crs):
        # need to clean this up...
        rerun = set()
        for polygon in self.lxml_polygons:
            if polygon.parcelType == 'Multipart' or \
                    (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is True:
                rerun = self.update_poly(rerun, polygon, crs)

        # some easement parents are linked to multipart polygons, this handles this if the order is wrong
        for polygon in rerun:
            self.update_poly(rerun, polygon, crs)

    def build(self, lxml_data, lines, points, crs):
        self.lines = lines
        self.points = points
        self.lxml_polygons = lxml_data.Parcels[0].Parcel
        self.get_poly_geom(crs)
        self.get_multi_polygons(crs)

        return self.polygons





