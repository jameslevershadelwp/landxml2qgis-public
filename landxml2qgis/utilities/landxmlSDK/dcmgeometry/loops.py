from utilities.landxmlSDK.geometryfunctions.misclosefunctions import loop_checker, get_likely_candy
from shapely.geometry import MultiLineString
from shapely.ops import linemerge
import statistics

class Loop:
    def __init__(self, loop, lines, likely=False):
        self.loop = loop
        self.geometry = self.set_geometry(lines)
        self.likely_candidate = likely

    def set_geometry(self, lines):
        loop_lines = []
        for line in lines.values():
            if line.name in self.loop:
                if line.geometry is not None:
                    loop_lines.append(line.geometry)

        return MultiLineString(loop_lines)


class Loops:
    def __init__(self, key, loop, lines):

        self.loop = loop.get('loop')
        self.likely_names = loop.get('likely')
        self.distances = loop.get('distances')
        self.angles = loop.get('angles')
        self.misclose_tolerance = loop.get('mis_tol')
        self.loops = self.set_individual_loops(lines)
        self.likely = self.set_likely(lines)
        self.geometry = self.set_geometry(lines)
        self.crs = self.set_crs_from_first_line(lines)
        # group for loop error distance estimated based on the tolerance set to a factor of 10
        self.group_value = key
        self.misclose_category = self.set_misclose_category()

    def set_misclose_category(self):
        low_tol = self.misclose_tolerance
        mean_dist = statistics.mean(self.distances)
        high_tol = low_tol + .5
        if low_tol <= mean_dist < high_tol:
            return 'WARNING'
        if mean_dist >= high_tol:
            return 'FAIL'
        else:
            return 'PASS'

    def set_crs_from_first_line(self, lines):
        crs = None
        for k, v in lines.items():
            crs = v.crs
            break
        return crs

    def set_individual_loops(self, lines):
        loops = []
        for l in self.loop:
            loops.append(Loop(l, lines))
        return loops

    # just set the geometry and turn it into a multiline
    def set_geometry(self, lines):
        loop_lines = []
        loops = []
        for l in self.loop:
            for i in l:
                loops.append(i)

        for k, v in lines.items():
            if v.name in loops:
                loop_lines.append(v.geometry)
        return MultiLineString(loop_lines)

    # likely cadidates dict of lines
    def set_likely(self, lines):
        likely_lines = []
        for item in self.likely_names:
            likely_lines.append(Loop([item], lines, likely=True))
        return likely_lines

    # return a merged geometry of the loop
    def get_merged_loop_geometry(self):
        return linemerge(self.geometry)

