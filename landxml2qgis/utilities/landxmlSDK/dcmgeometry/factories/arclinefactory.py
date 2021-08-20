from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.dcmgeometry.arcs import ArcGeom


class ArcLineGeomFactory:

    def __init__(self):
        self.lxml_data = None
        self.points = None
        self.is2point = None

    def get_line_geom(self, lxml_data, crs):
        lines = lxml_data.Survey[0].ObservationGroup[0].ReducedObservation
        return [LineGeom(line, self.points, self.is2point, crs) for line in lines]

    def get_arc_geom(self, lxml_data, crs):
        arcs = lxml_data.Survey[0].ObservationGroup[0].ReducedArcObservation
        return [ArcGeom(arc, self.points, self.is2point, crs) for arc in arcs]

    def build(self, lxml_data, point_geom, is2point, crs):
        self.points = point_geom
        self.is2point = is2point
        lines = self.get_line_geom(lxml_data, crs)
        lines += self.get_arc_geom(lxml_data, crs)
        lines = {(line.setup_point, line.target_point): line for line in lines}

        return lines