import math
from decimal import Decimal
import shapely.geometry as sg

from utilities.landxmlSDK.landxml.landxml import ReducedArcObservation
from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import hp2dd, arc2chord
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_bearing, calc_distance, \
    calc_inside_360, calc_new_point, metres2feet, metres2links
from utilities.landxmlSDK.geometryfunctions.arcfunctions import GenerateArc

class ArcGeom(LineGeom, GenerateArc):
    def __init__(self, line=None, point_geom=None, is2point=None, crs=None, swing=0):
        # point geom is a dictionary of PointGeoms i.e. {id1: PointGeom, id2: PointGeom}
        super().__init__()
        self.is_arc = True
        self.reversed = False
        self.crs = crs
        self.centre_point = None
        self.swing_dd_bearing = None
        self.swing_hp_bearing = None

        if isinstance(line, (ReducedArcObservation,)):
            self.name = line.name
            self.setup_point = point_geom.get(is2point.get(line.setupID, {}))
            self.target_point = point_geom.get(is2point.get(line.targetSetupID, {}))
            self.hp_bearing = line.chordAzimuth
            self.dd_bearing = hp2dd(self.hp_bearing)
            self.apply_swing(swing)
            self.radius = line.radius
            self.arc_length = line.length
            self.rot = line.rot
            self.distance = arc2chord(self.arc_length, self.radius)
            self.transformer = None
            self.geometry = self.calc_arc_values()

            self.distance_std = line.arcLengthAccuracy
            self.bearing_std = line.arcAzimuthAccuracy
            self.desc = line.desc
            self.line_type = line.purpose
            self.distance_type = line.arcType
            self.azimuth_type = line.arcType
            self.az_adopt_fact = line.azimuthAdoptionFactor
            self.is_nb = self.check_nb(point_geom)

    def radius2feet(self):
        if isinstance(self.radius, (float, int, Decimal)):
            return metres2feet(self.radius)

    def radius2links(self):
        if isinstance(self.radius, (float, int, Decimal)):
            return metres2links(self.radius)

    def arclength2feet(self):
        if isinstance(self.arc_length, (float, int, Decimal)):
            return metres2feet(self.arc_length)

    def arclength2links(self):
        if isinstance(self.arc_length, (float, int, Decimal)):
            return metres2links(self.arc_length)


