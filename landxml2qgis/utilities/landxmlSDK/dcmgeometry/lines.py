import math
import shapely.geometry as sg
from copy import deepcopy
from utilities.landxmlSDK.landxml.landxml import ReducedObservation
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import hp2dd, dd2hp
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import flip_bearing, calc_bearing, calc_distance, \
                                                                            metres2feet, metres2links, calc_inside_360
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import transform_coordinates


class LineGeom:
    def __init__(self, line=None, point_geom=None, is2point=None, crs=None, swing=0):
        self.is_arc = False
        self.reversed = False
        self.crs = crs
        self.likely_candidate = False
        self.overlapping = False
        self.swing_dd_bearing = None
        self.swing_hp_bearing = None
        self.rot = None

        if isinstance(line, ReducedObservation):
            self.name = line.name
            self.distance = line.horizDistance
            self.hp_bearing = line.azimuth
            self.dd_bearing = hp2dd(self.hp_bearing)
            self.apply_swing(swing)
            self.distance_std = line.distanceAccuracy
            self.bearing_std = line.azimuthAccuracy
            self.setup_point = point_geom.get(is2point.get(line.setupID, {}))
            self.target_point = point_geom.get(is2point.get(line.targetSetupID, {}))
            self.geometry = self.generate_transformed_geom()

            self.line_type = line.purpose
            self.distance_type = line.distanceType
            self.azimuth_type = line.azimuthType
            self.az_adopt_fact = line.azimuthAdoptionFactor
            self.is_nb = self.check_nb(point_geom)
            self.desc = line.desc

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
            self.desc = None

    def apply_swing(self, swing=0):
        self.swing_dd_bearing = calc_inside_360(self.dd_bearing + swing)
        self.swing_hp_bearing = dd2hp(self.swing_dd_bearing)

    def check_nb(self, points):
        if self.setup_point.point_type == 'natural_boundary' and \
                self.target_point.point_type == 'natural_boundary':
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

    def generate_transformed_geom(self):
        return sg.LineString([self.setup_point.geometry, self.target_point.geometry])

    def flip_direction(self):
        t = deepcopy(self.target_point)
        self.target_point = self.setup_point
        self.setup_point = t
        self.hp_bearing = flip_bearing(self.hp_bearing)
        self.calc_dd_bearing()
        self.geometry = sg.LineString(reversed(self.geometry.coords[:]))
        if self.rot == 'ccw':
            self.rot = 'cw'
        elif self.rot == 'cw':
            self.rot = 'ccw'
        else:
            self.rot = None
        self.reversed = True

    def create_bearing_distance_from_geometry(self):
        geom = deepcopy(self.geometry)
        if self.crs in [7844, 4283]:
            geom = transform_coordinates(geom, in_datum=self.crs, out_datum=7899)
        coords = geom.coords
        # if self.geometry is None:
        # self.calc_geometry_from_start_end(coords)
        self.distance = calc_distance(sg.Point(coords[0]), sg.Point(coords[-1]))
        self.dd_bearing = math.degrees(calc_bearing(sg.Point(coords[-1]), sg.Point(coords[0])))
        self.dd_bearing = calc_inside_360(self.dd_bearing)
        self.calc_hp_bearing()

    # coords can be shapely LineString or a list of coordinates
    def create_line_from_coords(self, setup_point=None, target_point=None, coords=None, name=None,
                                line_type=None, crs=None):
        self.name = name
        self.line_type = line_type
        self.setup_point = setup_point
        self.target_point = target_point
        self.crs = crs
        self.calc_geometry_from_start_end(coords=coords)
        self.create_bearing_distance_from_geometry()
        self.distance_type = 'calculated'
        self.azimuth_type = 'calculated'

    def calc_hp_bearing(self):
        self.hp_bearing = dd2hp(self.dd_bearing)

    def calc_dd_bearing(self):
        self.dd_bearing = hp2dd(self.hp_bearing)

    def calc_geometry_from_start_end(self, coords):
        if coords is None:
            coords = sg.LineString([self.setup_point.geometry, self.target_point.geometry])
        if isinstance(coords, sg.LineString):
            self.geometry = coords
        else:
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





