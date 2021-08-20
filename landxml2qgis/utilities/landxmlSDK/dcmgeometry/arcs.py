import math
from decimal import Decimal
import shapely.geometry as sg

from utilities.landxmlSDK.landxml.landxml import ReducedArcObservation
from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import hp2dd
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_bearing, calc_distance, \
    calc_inside_360, calc_new_point, metres2feet, metres2links


class ArcGeom(LineGeom):
    def __init__(self, line=None, point_geom=None, is2point=None, crs=None):
        # point geom is a dictionary of PointGeoms i.e. {id1: PointGeom, id2: PointGeom}
        super().__init__()
        self.is_arc = True
        self.reversed = False
        self.crs = crs
        self.centre_point = None

        if isinstance(line, (ReducedArcObservation,)):
            self.name = line.name
            self.setup_point = is2point.get(line.setupID)
            self.target_point = is2point.get(line.targetSetupID)
            self.hp_bearing = line.chordAzimuth
            self.dd_bearing = hp2dd(self.hp_bearing)
            self.radius = line.radius
            self.arc_length = line.length
            self.rot = line.rot
            self.distance = self.arc2chord()
            self.geometry = self.calc_arc_values(point_geom)
            self.distance_std = line.arcLengthAccuracy
            self.bearing_std = line.arcAzimuthAccuracy
            self.desc = line.desc
            self.line_type = line.purpose
            self.distance_type = line.arcType
            self.azimuth_type = line.arcType
            self.az_adopt_fact = line.azimuthAdoptionFactor
            self.is_nb = self.check_nb(point_geom)

        else:
            # self.name = None
            # self.setup_point = None
            # self.target_point = None
            # self.hp_bearing = None
            # self.dd_bearing = None
            self.radius = None
            self.arc_length = None
            self.rot = None
            # self.distance = None
            # self.geometry = None
            # self.distance_std = None
            # self.bearing_std = None
            # self.desc = None
            # self.line_type = None
            # self.distance_type = None
            # self.azimuth_type = None
            # self.az_adopt_fact = None
            # self.is_nb = None

    def arc2chord(self):
        if self.arc_length is not None and self.radius is not None:
            p1 = self.arc_length / self.radius
            p2 = 2 * self.radius
            p3 = math.sin(p1 / 2)
            return p2 * p3

    # converts chord to arc
    # centre point is
    def chord2arc(self, distance, radi, large=False):

        if distance > (radi * 2):
            distance = radi * 2
        dsq = distance * distance
        inth = (radi * radi) - (dsq / 4)
        h = radi - math.sqrt(inth)
        fourh = 4 * h
        p1 = math.asin(distance / (h + (dsq / fourh)))
        p2 = (h + (dsq / fourh))
        distance = p1 * p2
        if large is True:
            circum = math.pi * radi
            distance = circum - distance
        return distance

    @staticmethod
    def flip_rotation(rot):
        if isinstance(rot, str):
            if rot.lower() == 'cw':
                rotdir = 'ccw'
            else:
                rotdir = 'cw'
        return rotdir

    def calc_arc_values(self, point_geom):
        start_neh = point_geom.get(self.setup_point).geometry
        end_neh = point_geom.get(self.target_point).geometry
        try:
            radius = float(self.radius)
            arc_length = float(self.arc_length)
            start_neh_sg = start_neh
            end_neh_sg = end_neh
            if start_neh.has_z and end_neh.has_z:
                start_e, start_n, start_h = start_neh.x, start_neh.y, start_neh.z
                end_e, end_n, end_h = end_neh.x, end_neh.y, end_neh.z
            else:
                start_e, start_n, start_h = start_neh.x, start_neh.y, None
                end_e, end_n, end_h = end_neh.x, end_neh.y, None

            height_dif = None

            if start_h is not None and end_h is not None:
                height_dif = start_h - end_h

            if start_e is not None or end_e is not None:
                lines = []
                # calculate if arc is greater than 180
                alt_cent = False
                rot = self.rot
                if radius is not None:
                    half_circum = math.pi * radius
                    if arc_length > half_circum:
                        alt_cent = True
                        rot = self.flip_rotation(rot)
                # calculate the scale factor for the radius
                chord = self.distance
                distance = calc_distance(start_neh_sg, end_neh_sg)

                sf = distance / chord

                bearing = calc_bearing(end=end_neh_sg, start=start_neh_sg)
                bearing = math.degrees(bearing)

                nradius = float(radius) * sf  # 1.

                if nradius < (distance / 2.):
                    nradius = radius

                bearing = calc_inside_360(bearing)
                angle_bw_points, bearing_to_centre, nradius = self.calc_centre_point_of_curve(nradius, bearing,
                                                                                              distance, rot)

                delta_east, delta_north = calc_new_point(bearing_to_centre, nradius)
                centre_point = start_e + delta_east, start_n + delta_north

                if bearing_to_centre < 180:
                    centre_to_start = bearing_to_centre + 180
                else:
                    centre_to_start = bearing_to_centre - 180

                if alt_cent is True:
                    angle_bw_points = 360 - angle_bw_points
                    rot = self.flip_rotation(rot)

                rot_val = self.calc_rot_value(rot)

                lines.append([start_e, start_n])
                sum_of_angles = 0
                d = .001  # max deviation from arc
                a = nradius * nradius
                b = (nradius - d) * (nradius - d)

                try:
                    dist_of_change = 2 * (math.sqrt(a - b))
                    angle_change = math.degrees(dist_of_change / float(nradius))
                    if angle_change > 2:
                        angle_change = 2
                except:
                    angle_change = 1

                while abs(sum_of_angles) < (angle_bw_points - angle_change):
                    new_angle = (angle_change * rot_val)
                    sum_of_angles += new_angle
                    new_bearing = centre_to_start + sum_of_angles
                    delta_east, delta_north = calc_new_point(new_bearing, nradius)
                    next_e = centre_point[0] + delta_east
                    next_n = centre_point[1] + delta_north
                    arc_point = [next_e, next_n]
                    lines.append(arc_point)
                lines.append([end_e, end_n])

                # add heights
                if height_dif is not None:
                    number_of_points = len(lines) - 1
                    increment = height_dif / float(number_of_points)
                    height = start_h
                    new_lines = [(start_e, start_n, start_h)]
                    for line in lines[1:-1]:
                        height += increment
                        line = (line[0], line[1], height)
                        new_lines.append(line)
                    new_lines.append((end_e, end_n, end_h))

            else:
                lines = [start_neh, end_neh]

        except Exception as err:
            print(err)
            lines = [start_neh, end_neh]

        return sg.LineString(lines)

    def calc_arc_length_size_using_centre(self, point_geom):
        ep = point_geom.get(self.target_point)
        sp = point_geom.get(self.setup_point)
        cp = point_geom.get(self.centre_point)
        bearing_se = calc_bearing(ep.geometry, sp.geometry)
        bearing_sc = calc_bearing(cp.geometry, ep.geometry)
        theta = calc_inside_360(bearing_sc - bearing_se)
        if theta <= 180:
            if self.rot == 'cw':
                large = False
            else:
                large = True
        else:
            if self.rot == 'cw':
                large = True
            else:
                large = False
        return large

    # assigns a positive or negative value for a rotation direction
    @staticmethod
    def calc_rot_value(rot):
        rot_val = 1
        if isinstance(rot, str):
            if rot.lower() == 'ccw':
                rot_val = -1
            return rot_val

    def calc_centre_point_of_curve(self, radius, bearing, distance, rot_val):
        theta = math.degrees(distance / radius)

        half_chord = float(distance) / 2.0

        if half_chord > radius:
            radius = half_chord

        half_angle_bw_points = math.degrees(math.asin(float(half_chord) / float(radius)))
        angle_bw_points = half_angle_bw_points * 2
        angle_to_centre = 180 - (90 + half_angle_bw_points)
        bearing_to_centre = bearing + (angle_to_centre * self.calc_rot_value(rot_val))

        return angle_bw_points, bearing_to_centre, radius

    def calc_arc_length(self, start_ne, end_ne, centre_ne, rot, radius):
        start_ne = sg.Point(start_ne)
        end_ne = sg.Point(end_ne)
        centre_ne = sg.Point(centre_ne)
        chord = calc_distance(start_ne, end_ne)
        b2s = math.degrees(calc_bearing(start_ne, centre_ne))
        b2e = math.degrees(calc_bearing(end_ne, centre_ne))
        angle = round(calc_inside_360(b2s - b2e))

        # lets not create the large arc here unless we recalc..
        if rot == 'cw':
            if angle >= 180 or angle == 0:
                large = False
            else:
                large = True
        else:
            if angle >= 180:
                large = True
            else:
                large = False

        arc_length = self.chord2arc(chord, radius)
        if large is True:
            circumference = math.pi * 2 * radius
            arc_length = circumference - arc_length
        return arc_length

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


