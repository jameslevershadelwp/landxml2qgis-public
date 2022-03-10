import networkx as nx
import shapely.ops as so
import shapely.geometry as sg
import math

from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import calc_distance, calc_bearing, calc_inside_360


class SurveyGraph:
    def __init__(self, lines, points):
        self.graph = self.generate_graph(lines, points)

    def generate_graph(self, lines, points):
        g = nx.Graph()
        nodes = set()

        for k, v in lines.items():
            if v.distance_type not in {'Generated'}:
                setup, target = k
                g.add_edge(setup, target, distance=v.distance, bearing=v.dd_bearing, st=(setup, target))
                nodes.add(setup)
                nodes.add(target)

        # find unconnected points
        unconnected = set()
        uncon_branches = set()
        for point in points.keys():
            if point not in nodes:
                unconnected.add(point)

        connected = nx.is_k_edge_connected(g, 1)
        if connected is False:
            # get largest branch
            branches = list(nx.k_edge_components(g, 1))
            max_b = max(branches, key=len)
            ref_point = sorted([item for item in max_b])[-1]
            for item in branches:
                if item != max_b:
                    unconnected.add(list(item)[0])
                    for p in item:
                        uncon_branches.add(p)

        else:
            ref_points = sorted(list(nodes))
            ref_point = ref_points[0]

        rev_look = {v.geometry.coords[:][0]: k for k, v in points.items()}

        # multipoint of connected.
        con_multi = sg.MultiPoint([v.geometry for k, v in points.items() if k not in
                                   unconnected.union(uncon_branches)])

        # add in generated edges for unconnected points.
        for point in unconnected:
            target = points.get(point).geometry
            close_point = so.nearest_points(target, con_multi)[1].coords[:][0]
            ref = rev_look.get(close_point, ref_point)
            setup = points.get(ref).geometry
            if setup is not None and target is not None:
                distance = calc_distance(setup, target)
                azimuth = calc_bearing(target, setup)
                azimuth = calc_inside_360(math.degrees(azimuth))
                g.add_edge(ref, point, distance=distance, bearing=azimuth, st=(ref, point))

        return g