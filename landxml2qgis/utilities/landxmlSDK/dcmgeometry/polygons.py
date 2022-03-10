import json

from utilities.landxmlSDK.landxml.landxml import ParcelType, Line, Curve, IrregularLine
from utilities.landxmlSDK.geometryfunctions.otherfunctions import previous_and_next
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import process_angles, remove_stroked_curves,\
    calc_bearing, calc_distance
from utilities.landxmlSDK.dcmgeometry.points import PointGeom
from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.dcmgeometry.arcs import ArcGeom
from utilities.landxmlSDK.geometryfunctions.misclosefunctions import Misclose
from utilities.landxmlSDK.landxml.landxml import Curve
import math
import shapely.geometry as sg
from copy import deepcopy


class PolygonGeom:
    def __init__(self, polygon=None, lines=None, points=None):
        self.geometry = None
        self.closed = True
        self.part = False
        self.multipart = False
        self.parent = None
        self.children = {}
        self.parcel_type = None
        self.valid_geom = None
        self.crs = None
        self.easement = False
        self.contains_nat_bdy = False
        self.polygon_points = {}
        self.inner_angles = {}
        self.coord_lookup = None
        self.point_lookup = None
        self.original_geom = None
        self.coord_decimals = None
        self.polygon_notations = []
        self.parcel_arcs = {}
        self.arc_rot_errors = []
        self.arc_rad_errors = []

        if isinstance(polygon, ParcelType):
            self.line_order = self.set_line_order(polygon, lines, points)
            self.stated_area = polygon.area
            self.parcel_class = polygon.class_
            self.parcel_state = polygon.state
            self.parcel_format = polygon.parcelFormat
            self.calc_area = self.get_area()
            self.name = polygon.name
            self.desc = polygon.desc
            self.misclose = self.get_misclose()

            polygon_centre = polygon.Center
            if len(polygon_centre) > 0:
                self.centre_point = polygon_centre[0].pntRef
            else:
                self.centre_point = None

        else:
            self.centre_point = None
            self.stated_area = None
            self.parcel_class = None
            self.parcel_state = None
            self.parcel_format = None
            self.calc_area = None
            self.name = None
            self.desc = None
            self.misclose = None
            self.line_order = None

    def set_geometry(self, geometry, points=None):
        if self.geometry is None:
            self.original_geom = geometry
        self.geometry = geometry
        self.set_inner_angles(points)
        self.calc_area = self.get_area()
        self.closed = self.set_is_closed()

    def create_polygon(self, geometry, points=None, name=None, crs=None, coord_decimals=None):
        if coord_decimals is not None:
            self.coord_decimals = coord_decimals
        self.set_geometry(geometry, points)
        self.calc_area = self.get_area()
        self.closed = self.set_is_closed()
        self.set_polygon_name(name)
        self.crs = crs

    # def set_original_geometry(self):
    #     return self.geometry

    def set_polygon_name(self, name):
        if name is not None:
            self.name = name
        else:
            raise TypeError()

    def set_is_closed(self):
        if self.geometry is not None:
            return self.geometry.is_valid
        else:
            return False

    def get_area(self):
        if self.geometry is not None:
            return self.geometry.area
        # else:
        #     raise TypeError()

    def reset_geometry(self):
        # this probably needs to update everything?
        self.geometry = self.original_geom
        self.closed = self.set_is_closed()
        self.calc_area = self.get_area()

    def set_coord_lookup(self, points):
        if self.coord_decimals is None:
            self.coord_lookup = {tuple(v.geometry.coords)[0]: v.name for v in points.values()}
        else:
            self.coord_lookup = {}
            for v in points.values():
                x = round(v.geometry.x, self.coord_decimals)
                y = round(v.geometry.y, self.coord_decimals)
                self.coord_lookup[(x, y)] = v.name

        self.point_lookup = {v.name: v.geometry for v in points.values()}

    def set_polygon_points(self, ring, start=0, points=None):
        if points is None:
            points = {}
        e = 0
        for e, i in enumerate(ring):
            point = PointGeom()
            point.point_oid = e + start
            point.name = 'CGPNT-' + str(point.point_oid)
            point.original_point_oid = e + start
            if self.coord_decimals is not None:
                i = (round(i[0], self.coord_decimals), round(i[1], self.coord_decimals))
            point.geometry = sg.Point(i)
            point.original_geom = sg.Point(i)
            points[point.point_oid] = point

        return e + start, points

    def generate_polygon_points(self, points=None):
        # generate point objects for polygon that does not have points
        # TODO this should use the point class will impact some other functions before we change it
        if points is None:
            exterior = self.geometry.exterior.coords[:]
            start, points = self.set_polygon_points(exterior)
            interiors = self.geometry.interiors
            for ring in interiors:
                for i in ring.coords[:]:
                    start, points = self.set_polygon_points(i, start, points)

        self.set_coord_lookup(points)

        # exterior
        exterior = []
        all_points = []
        for i in self.geometry.exterior.coords[:]:
            if self.coord_decimals is not None:
                i = (round(i[0], self.coord_decimals), round(i[1], self.coord_decimals))
            point_name = self.coord_lookup.get(i)
            if point_name is not None:
                exterior.append(point_name)

        all_points += exterior
        # interiors
        interiors = []
        for ring in self.geometry.interiors[:]:
            interior = []
            for i in ring.coords[:]:
                if self.coord_decimals is not None:
                    i = (round(i[0], self.coord_decimals), round(i[1], self.coord_decimals))
                point_name = self.coord_lookup.get(i)
                if point_name is not None:
                    interior.append(point_name)
            all_points += exterior
            interiors.append(list(interior))
        self.polygon_points = {'exterior': exterior, 'interiors': interiors, 'all': all_points}

    def set_values(self, p, i, n, ring):
        self.inner_angles[i] = process_angles(p, i, n, ring, self.point_lookup)

    def set_inner_angles(self, points=None):
        self.generate_polygon_points(points)
        exterior = self.polygon_points.get('exterior')
        interiors = self.polygon_points.get('interiors')

        for prev, item, nxt in previous_and_next(exterior):
            self.set_values(prev, item, nxt, exterior)

        for interior in interiors:
            for prev, item, nxt in previous_and_next(interior):
                self.set_values(prev, item, nxt, interior)

    def get_misclose(self, lines=None, points=None):
        if self.line_order is None:
            self.set_line_order(lines=lines, points=points)

        if self.line_order is not None:
            misclose = Misclose(self.line_order)
            return misclose

    def set_line_order(self, polygon=None, lines=None, points=None):
        lo = []
        if polygon is not None:
            if polygon.parcelType != 'Multipart':
                if (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is False and len(
                        polygon.CoordGeom) > 0:
                    if len(polygon.CoordGeom) > 0:
                        coord_geom = polygon.CoordGeom[0]
                        # lo = sorted([(x.polygon_index, x) for x in coord_geom.Line +
                        #       coord_geom.Curve + coord_geom.IrregularLine])

                        lo = []

                        for x in coord_geom.Line + coord_geom.Curve + coord_geom.IrregularLine:
                            line = lines.get((x.Start.pntRef, x.End.pntRef))
                            if line is None:
                                line = deepcopy(lines.get((x.End.pntRef, x.Start.pntRef)))
                                if line is not None:
                                    line.flip_direction()
                                else:
                                    print((x.End.pntRef, x.Start.pntRef))
                            if line is not None:
                                if isinstance(x, Curve):
                                    self.parcel_arcs[(x.Start.pntRef, x.End.pntRef)] = x
                                    if x.rot != line.rot:
                                        self.arc_rot_errors.append((line, polygon))
                                    if x.radius != line.radius:
                                        self.arc_rad_errors.append((line,polygon))
                                lo.append((x.polygon_index, line))
                        lo = [l[1] for l in sorted(lo)]
        else:
            x = self.geometry
            # TODO need to handle manually setting a line order here. Will involve generating lines for the polygon....
            pass

        return lo

    def add_polygon_notation(self, notation_type, notation):
        n = {'notation_type': notation_type,
             'notation': notation}
        self.polygon_notations.append(n)

