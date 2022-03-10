import networkx as nx
import math
import shapely.geometry as sg
from copy import deepcopy

from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_distance, \
    calc_new_point, calc_bearing, calc_inside_360
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import dd2hp
from utilities.landxmlSDK.geometryfunctions.otherfunctions import previous_and_next


class Misclose:
    def __init__(self, line_order):
        self.misclose_distance = None
        self.misclose_bearing = None
        self.irregular_line = False
        self.natural_boundary = False
        self.sum_of_distances = 0
        self.calculated_polygon = self.set_calculated_polygon(line_order)
        self.calculated_area = self.set_calcluated_area()
        self.misclose_tolerance = None
        self.closed = self.set_polygon_closed(line_order)
        self.missing_lines = []
        self.has_misclose = False
        self.calculate_misclose(line_order)

    def set_calcluated_area(self):
        if self.calculated_polygon is not None:
            a = self.calculated_polygon.area
        else:
            a = None
        return a

    def calculate_misclose(self, line_order):
        start_e, start_n = 0, 0
        end_e, end_n = 0, 0
        for line in line_order:
            if line.is_nb is True:
                self.natural_boundary = True
            if line.line_type == 'irregular line':
                self.irregular_line = True

            self.sum_of_distances += line.distance
            delta_e, delta_n = calc_new_point(line.dd_bearing, line.distance)
            end_e += delta_e
            end_n += delta_n

        s = sg.Point([start_e, start_n])
        e = sg.Point([end_e, end_n])
        self.misclose_distance = calc_distance(s, e)
        self.misclose_bearing = dd2hp(calc_inside_360(math.degrees(calc_bearing(s, e))))
        self.misclose_tolerance = (.015 + self.sum_of_distances) / 10000

        if ((self.misclose_tolerance < self.misclose_distance) and self.natural_boundary is False
            and self.irregular_line is False and self.closed is True):
            self.has_misclose = True

    @staticmethod
    def set_polygon_closed(line_order):
        if len(line_order) > 1 and line_order[0].setup_point == line_order[-1].target_point:
            closed = True
        else:
            closed = False
        return closed

    @staticmethod
    def set_calculated_polygon(line_order):
        polygon = []
        for line in line_order:
            for point in line.geometry.coords[:-1]:
                polygon.append(point)
        if len(polygon) > 2:
            return sg.Polygon(polygon)
        else:
            return None


def loop_checker(geom, start_node, mis_tol=None):
    bad_loops = []
    good_loops = []
    bad_candy = {}
    line_lookups = geom.lines
    connection_loops = nx.cycle_basis(geom.survey_graph.graph, start_node)
    connection_loops = [i for i in connection_loops if len(i) > 1]
    bad_obs = []
    for point_order in connection_loops:
        reduced_obs = []
        line_order = []
        line_points = []

        for previous, line_point, nxt in previous_and_next(point_order):
            if nxt:
                line = (line_point, nxt)
            else:
                line = (line_point, point_order[0])
            line_points.append(line)
            try:
                line_id = line_lookups[line]
                line_order.append(line_id)
            except KeyError:
                line_id = deepcopy(line_lookups[(line[1], line[0])])
                line_id.flip_direction()
                line_order.append(line_id)

            reduced_obs.append(line_id  .name)

        f = Misclose(line_order)
        mis_dist = f.misclose_distance
        mis_bearing = f.misclose_bearing

        if mis_tol is None:

            mis_tol = f.misclose_tolerance

        if mis_dist > mis_tol:
            bad_loop = reduced_obs
            good_loop = None
        else:
            good_loop = reduced_obs
            bad_loop = None

        if good_loop is not None:
            good_loops += good_loop
        else:
            if mis_dist > .05:
                rounded_value = ("%.1f" % mis_dist)
            elif mis_dist > .005:
                rounded_value = ("%.2f" % mis_dist)
            else:
                rounded_value = ("%.3f" % mis_dist)

            bad_loops += bad_loop
            bc = bad_candy.get(rounded_value, {})
            value = bc.get('loop', [])
            distances = bc.get('distances', [])
            angles = bc.get('angles', [])

            red_loops = reduced_obs

            value.append(red_loops)
            angles.append(mis_bearing)
            distances.append(mis_dist)
            bad_candy[rounded_value] = {'loop': value, 'angles': angles,
                                        'distances': distances, 'mis_tol': f.misclose_tolerance}

        if len(bad_candy) > 0:
            bad_loops = list(set(bad_loops))
            good_loops = list(set(good_loops))

            bad_obs = []
            for item in bad_loops:
                if item not in good_loops:
                    bad_obs.append(item)

    likely_candy = {}
    for key, value in bad_candy.items():
        likely_candy[key] = get_likely_candy(bad_obs, value)

    return likely_candy


def get_likely_candy(bad_obs, value):
    likely = []
    count_of_items = {}
    for item in value.get('loop', []):
        for red_ob in item:
            count = count_of_items.get(red_ob, 0)
            count += 1
            count_of_items[red_ob] = count
    for key1, value1 in count_of_items.items():
        if key1 in bad_obs and value1 == len(value.get('loop', [])):
            likely.append(key1)
    value['likely'] = likely
    return value


def area_tolerances(area, calc_area):
    error = 'Pass'
    difference = abs(area - calc_area)

    percentage = (difference / area) * 100
    # check if difference is greater than 5%
    if percentage >= 5:
        error = 'Warning'

    return error
