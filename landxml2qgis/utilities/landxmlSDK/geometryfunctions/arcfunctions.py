import math
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import build_transformer, transform_coordinates
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import chord2arc
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_inside_360, flip_bearing,\
    calc_new_point, calc_bearing
from utilities.landxmlSDK.dcmgeometry.points import PointGeom
from shapely.geometry import LineString, Point


def calc_arc_length_size_using_centre(setup_point, target_point, centre_point, rot):
    ep = target_point
    sp = setup_point
    cp = centre_point
    bearing_se = calc_bearing(ep.geometry, sp.geometry)
    bearing_sc = calc_bearing(cp.geometry, ep.geometry)
    theta = calc_inside_360(bearing_sc - bearing_se)
    if theta <= 180:
        if rot == 'cw':
            large = False
        else:
            large = True
    else:
        if rot == 'cw':
            large = True
        else:
            large = False
    return large


# assigns a positive or negative value for a rotation direction
def calc_value_for_rotation(rot_dir):
    if rot_dir.lower() == 'ccw':
        rot_val = -1
    else:
        rot_val = 1
    return rot_val


def calc_centre_point_of_curve(radius, bearing, distance, rot_val):
    theta = math.degrees(distance / radius)
    if theta <= 180:
        angle = (180. - theta) / 2
    else:
        angle = (180. - (360. - theta)) / 2

    if rot_val == 'ccw':
        if theta <= 180:
            bearing_of_radius = bearing - angle
        else:
            bearing_of_radius = bearing + angle
    else:
        if theta <= 180:
            bearing_of_radius = bearing + angle

        else:  # aobs['rot'] == 'cw' and theta > 180:
            bearing_of_radius = bearing - angle

    bearing_of_radius = calc_inside_360(bearing_of_radius)

    half_chord = float(distance) / 2.0

    if half_chord > radius:
        radius = half_chord
    half_angle_bw_points = math.degrees(math.asin(float(half_chord) / float(radius)))
    angle_bw_points = half_angle_bw_points * 2
    angle_to_centre = 180 - (90 + half_angle_bw_points)
    bearing_to_centre = bearing + (angle_to_centre * calc_value_for_rotation(rot_val))

    return angle_bw_points, bearing_to_centre, radius


def flip_rotation(rot):
    if isinstance(rot, str):
        if rot.lower() == 'cw':
            rotdir = 'ccw'
        else:
            rotdir = 'cw'
    return rotdir


class GenerateArc:
    def __init__(self, radius, arc_length, rot, distance, setup, target, centre=None, crs=None, transformer=None):
        self.radius = radius

        self.rot = rot
        self.distance = distance
        if arc_length is None:
            arc_length = chord2arc(self.distance, self.radius)
        self.arc_length = arc_length
        self.setup_point = setup
        self.target_point = target
        self.centre_point = centre
        self.crs = crs
        self.transformer = transformer
        self.geometry = self.calc_arc_values()


    def update_radius(self, radius):
        self.radius = radius
        return self.calc_arc_values()

    def calc_arc_values(self):

        if self.transformer is None:
            project, osr_value = build_transformer(self.crs, 7899)
        else:
            project = self.transformer
        start_neh = transform_coordinates(self.setup_point.geometry, project=project)
        end_neh = transform_coordinates(self.target_point.geometry, project=project)

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
                        rot = flip_rotation(rot)
                # calculate the scale factor for the radius
                chord = self.distance
                distance = start_neh_sg.distance(end_neh_sg)

                sf = distance / float(chord)

                bearing = math.atan2(end_neh_sg.x - start_neh_sg.x, end_neh_sg.y - start_neh_sg.y)
                bearing = math.degrees(bearing)

                nradius = float(radius) * sf  # 1.

                if nradius < (distance / 2.):
                    nradius = radius

                bearing = calc_inside_360(bearing)
                angle_bw_points, bearing_to_centre, nradius = calc_centre_point_of_curve(nradius, bearing,
                                                                                              distance, rot)

                delta_east, delta_north = calc_new_point(bearing_to_centre, nradius)
                centre_point = start_e + delta_east, start_n + delta_north

                if bearing_to_centre < 180:
                    centre_to_start = bearing_to_centre + 180
                else:
                    centre_to_start = bearing_to_centre - 180

                if alt_cent is True:
                    angle_bw_points = 360 - angle_bw_points
                    rot = flip_rotation(rot)

                rot_val = calc_value_for_rotation(rot)

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

        response_project, osr_value = build_transformer(7899, self.crs)

        geom = transform_coordinates(LineString(lines), 7899, project=response_project)
        self.geometry = LineString([(self.setup_point.geometry.x, self.setup_point.geometry.y)] + geom.coords[1:-1] +
                                   [(self.target_point.geometry.x, self.target_point.geometry.y)])

        return self.geometry
