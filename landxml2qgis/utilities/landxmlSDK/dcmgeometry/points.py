from utilities.landxmlSDK.landxml.landxml import CgPoint
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_distance
import shapely.geometry as sg


class PointGeom:
    """Class to hold Point Geometry, will hold original geometry and any updated geometries
     need to think about how to hold all different situations in here"""
    def __init__(self, point=None, monument=None):
        self.original_crs = None
        self.crs = None
        self.mon_state = None
        self.mon_type = None
        self.mon_condition = None
        self.mon_desc = None
        self.mon_origin_survey = None
        self.translated = False
        self.translated_x = 0
        self.translated_y = 0
        self.translated_z = 0
        self.ccc = False
        self.p_constrained = -1
        self.q_constrained = -1
        if isinstance(point, CgPoint):
            self.name = point.name
            self.point_type = point.pntSurv
            self.point_oid = point.oID
            self.associated_point_oid = None
            self.associated_point_distance = None
            self.point_state = point.state
            self.latitude = point.latitude
            self.longitude = point.longitude
            self.neh = point.valueOf_.split()
            self.original_geom = self.get_original_geom()
            self.geometry = self.original_geom
            if monument is not None:
                self.set_monument(monument)
        else:
            self.name = None
            self.point_type = None
            self.point_oid = None
            self.associated_point_oid = None
            self.associated_point_distance = None
            self.point_state = None
            self.latitude = None
            self.longitude = None
            self.neh = None
            self.original_geom = None
            self.geometry = None

    def set_monument(self, monument):
        self.mon_state = monument.state
        self.mon_type = monument.type
        self.mon_condition = monument.condition
        self.mon_desc = monument.desc
        self.mon_origin_survey = monument.originSurvey

    def get_original_geom(self):
        neh = self.neh
        if None in neh:
            neh = [self.latitude, self.longitude]
            if len(self.neh) == 3:
                neh += [self.neh[2]]
        if len(neh) == 3:
            enh = [neh[1]] + [neh[0] + neh[2]]
        else:
            enh = [neh[1]] + [neh[0]]
        return sg.Point((float(x) for x in enh))

    def set_new_geometry(self, geometry):
        if isinstance(geometry, sg.Point):
            if self.original_geom is None:
                if self.geometry is not None:
                    self.original_geom = self.geometry
                else:
                    self.original_geom = geometry
            self.geometry = geometry
        else:
            raise TypeError()

    def set_associated_id(self, oid, distance):
        self.associated_point_oid = oid
        self.associated_point_distance = distance

    def get_distance_between_orig_new_coords(self):
        return calc_distance(self.original_geom, self.geometry)

    def round_geometry(self, decimals=None):
        geom = sg.Point((round(self.geometry.x, decimals), round(self.geometry.y, decimals)))
        self.set_new_geometry(geom)