from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.dcmgeometry.arcs import ArcGeom
import shapely.geometry as sg
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_bearing, calc_distance
from utilities.landxmlSDK.geometryfunctions.arcfunctions import calc_arc_length_size_using_centre, GenerateArc
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import chord2arc
from utilities.landxmlSDK.landxml.landxml import Curve

class ArcLineGeomFactory:

    def __init__(self):
        self.lxml_data = None
        self.points = None
        self.is2point = None

    def get_line_geom(self, lxml_data, crs, swing=0):
        lines = lxml_data.Survey[0].ObservationGroup[0].ReducedObservation
        return [LineGeom(line, self.points, self.is2point, crs, swing=swing) for line in lines]

    def get_arc_geom(self, lxml_data, crs, swing=0):
        arcs = lxml_data.Survey[0].ObservationGroup[0].ReducedArcObservation
        return [ArcGeom(arc, self.points, self.is2point, crs, swing=swing) for arc in arcs]

    def find_missing_lines(self, lxml_data, crs=None, swing=0):
        count = 0
        for polygon in lxml_data.Parcels[0].Parcel:
            if polygon is not None:
                if polygon.parcelType != 'Multipart':
                    if (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is False and len(
                            polygon.CoordGeom) > 0:
                        if len(polygon.CoordGeom) > 0:
                            coord_geom = polygon.CoordGeom[0]
                            # lo = sorted([(x.polygon_index, x) for x in coord_geom.Line +
                            #       coord_geom.Curve + coord_geom.IrregularLine])
                            for x in coord_geom.Line + coord_geom.Curve + coord_geom.IrregularLine:
                                line = self.lines.get((x.Start.pntRef, x.End.pntRef))
                                if line is None:
                                    line = self.lines.get((x.End.pntRef, x.Start.pntRef))
                                    # handle reversed generated line could have multiple descriptions.....
                                    if line is not None:
                                        if line.distance_type == 'Generated':
                                            line = None
                                    if line is None:
                                        count += 1
                                        self.lines[(x.Start.pntRef,
                                                    x.End.pntRef)] = self.generate_line(x, count, crs, swing)

    def generate_line(self, line, count, crs=None, swing=0):
        sp = line.Start.pntRef
        ep = line.End.pntRef

        start = self.points.get(sp)
        end = self.points.get(ep)

        if isinstance(line, Curve):
            cp = line.Center.pntRef
            centre = self.points.get(cp)
            radius = line.radius
            rotation = line.rot
            chord = calc_distance(end.geometry, start.geometry)
            # work out big arc or small arc based on original values
            # and the centre point of the arc and rotation
            # build the arc using ArcGeom class
            nl = ArcGeom()
            nl.rot = rotation
            nl.radius = radius
            nl.setup_point = start
            nl.target_point = end
            nl.centre_point = centre
            nl.distance = chord
            nl.is_arc = True

            large = calc_arc_length_size_using_centre(start, end, centre, nl.rot)

            # add the calculated arc length here
            nl.arc_length = chord2arc(nl.distance, nl.radius, large)
            nl.geometry = GenerateArc(radius=nl.radius, arc_length=nl.arc_length, rot=nl.rot, distance=nl.distance,
                                      setup=start, target=end, centre=centre).geometry


        else:
            geom = [start.geometry.coords[:][0], end.geometry.coords[:][0]]
            nl = LineGeom()
            nl.geometry = sg.LineString(geom)
            nl.setup_point = start
            nl.target_point = end
            nl.is_arc = False

        if line.desc is not None:
            nl.line_type = line.desc
        else:
            nl.line_type = 'Generated'
        nl.crs = crs
        nl.is_nb = False
        nl.name = f'GENOBS-{count}'
        nl.azimuth_type = 'Generated'
        nl.distance_type = 'Generated'
        nl.create_bearing_distance_from_geometry()
        if swing != 0:
            nl.apply_swing(swing)
        return nl

    def build(self, lxml_data, point_geom, is2point, crs, swing=0) -> [LineGeom]:
        self.points = point_geom
        self.is2point = is2point
        lines = self.get_line_geom(lxml_data, crs, swing)
        lines += self.get_arc_geom(lxml_data, crs, swing)
        lines = {(line.setup_point.name, line.target_point.name): line for line in lines}
        self.lines = lines
        self.find_missing_lines(lxml_data, crs, swing)
        return self.lines