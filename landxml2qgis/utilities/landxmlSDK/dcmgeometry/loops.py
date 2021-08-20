from utilities.landxmlSDK.geometryfunctions.misclosefunctions import loop_checker, get_likely_candy
from shapely.geometry import MultiLineString
from shapely.ops import linemerge



class Loop:
    def __init__(self, key, loop, lines):
        self.loop = loop.get('loop')
        self.distances = loop.get('distances')
        self.angles = loop.get('angles')
        self.likely_names = loop.get('likely')
        self.likely = self.set_likely(lines)
        #self.likely_geometry = self.set_likely_geometry()
        self.geometry = self.set_geometry(lines)
        self.crs = self.set_crs_from_first_line(lines)

        # group for loop error distance estimated based on the tolerance set to a factor of 10
        self.group_value = key

    def set_crs_from_first_line(self, lines):
        crs = None
        for k, v in lines.items():
            crs = v.crs
            break
        return crs

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
        likely_lines = {}
        for k, v in lines.items():
            if v.name in self.likely_names:
                v.likely_candidate = True
                likely_lines[k] = v
        return likely_lines

    # just set the likely geometry and turn it into a multiline
    def set_likely_geometry(self):
        return MultiLineString([v.geomtery for v in self.likely.values()])

    # return a merged geometry of the loop
    def get_merged_loop_geometry(self):
        return linemerge(self.geometry)

