import shapely.geometry as sg

from utilities.landxmlSDK.landxml.landxml import ReducedObservation
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import hp2dd, dd2hp
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import flip_bearing, calc_bearing, calc_distance, \
                                                                            metres2feet, metres2links


class LineGeom:
    def __init__(self, line=None, point_geom=None, is2point=None, crs=None):
        self.is_arc = False
        self.reversed = False
        self.crs = crs
        self.likely_candidate = False
        self.overlapping = False
        if isinstance(line, ReducedObservation):
            self.name = line.name
            self.distance = line.horizDistance
            self.hp_bearing = line.azimuth
            self.dd_bearing = hp2dd(self.hp_bearing)
            self.distance_std = line.distanceAccuracy
            self.bearing_std = line.azimuthAccuracy
            self.setup_point = is2point.get(line.setupID)
            self.target_point = is2point.get(line.targetSetupID)
            self.geometry = self.generate_transformed_geom(point_geom)
            self.line_type = line.purpose
            self.distance_type = line.distanceType
            self.azimuth_type = line.azimuthType
            self.az_adopt_fact = line.azimuthAdoptionFactor
            self.is_nb = self.check_nb(point_geom)

        else:
            self.name = None
            self.distance = None
            self.hp_bearing = None
            self.dd_bearing = None
            self.distance_std = None
            self.bearing_std = None
            self.setup_point = None
            self.target_point = None
            self.geometry = None
            self.line_type = None
            self.distance_type = None
            self.azimuth_type = None
            self.az_adopt_fact = None
            self.is_nb = None

    def check_nb(self, points):
        if points.get(self.setup_point).point_type == 'natural_boundary' and \
                points.get(self.target_point).point_type == 'natural_boundary':
            is_nb = True
        else:
            is_nb = False
        return is_nb

    # bearing types must be one of 'hp, dd'
    def update_bearings(self, bearing=None, bearing_type=None):
        if bearing is not None:
            if bearing_type == 'hp':
                self.hp_bearing = bearing
                self.dd_bearing = hp2dd(self.hp_bearing)
            elif bearing_type == 'dd':
                self.dd_bearing = bearing
                self.hp_bearing = dd2hp(self.dd_bearing)

    def generate_transformed_geom(self, point_geom):
        s = point_geom.get(self.setup_point).geometry
        t = point_geom.get(self.target_point).geometry
        if t is not None and s is not None:
            return sg.LineString([s, t])

    def flip_direction(self):
        t = self.target_point
        self.target_point = self.setup_point
        self.setup_point = t
        self.hp_bearing = flip_bearing(self.hp_bearing)
        self.dd_bearing = hp2dd(self.hp_bearing)
        self.geometry = sg.LineString(reversed(self.geometry.coords[:]))
        self.reversed = True

    def create_line_from_coords(self, setup_point=None, target_point=None, coords=None, name=None,
                                line_type=None, crs=None):
        self.name = name
        self.line_type = line_type
        self.setup_point = setup_point
        self.target_point = target_point
        self.crs = crs
        self.distance = calc_distance(sg.Point(coords[0]), sg.Point(coords[-1]))
        self.dd_bearing = calc_bearing(sg.Point(coords[-1]), sg.Point(coords[0]))
        self.hp_bearing = dd2hp(self.dd_bearing)
        self.distance_type = 'calculated'
        self.azimuth_type = 'calculated'
        self.geometry = sg.LineString(coords)

    def distance2feet(self):
        return metres2feet(self.distance)

    def distance2links(self):
        return metres2links(self.distance)


    # def generate_original_geom(self, point_geom):
    #     s = point_geom.get(self.setup_point).original_geom
    #     t = point_geom.get(self.target_point).original_geom
    #     if t is not None and s is not None:
    #         return sg.LineString([s, t])





