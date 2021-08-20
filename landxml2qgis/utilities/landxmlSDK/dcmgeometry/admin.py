from utilities.landxmlSDK.landxml.landxml import SurveyHeader
from utilities.landxmlSDK.dcmgeometry.polygons import PolygonGeom
import shapely.ops as so


class Admin:
    def __init__(self, survey_header=None, polygons=None):
        if isinstance(survey_header, SurveyHeader):
            pass

        geometry = self.set_geometry(polygons)

    def set_geometry(self, polygons):
        if polygons is not None:
            geom_list = [polygon.goemetry for polygon in polygons.values() if polygon]
            return so.unary_union(geom_list)