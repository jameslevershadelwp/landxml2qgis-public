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
        self.likely_geometry = self.set_likely_geometry()
        self.loop_details = self.set_loop_details(lines)
        self.geometry = self.set_geometry()
        self.crs = self.set_crs_from_first_line(lines)

        # group for loop error distance estimated based on the tolerance set to a factor of 10
        self.group_value = key

    def set_crs_from_first_line(self, lines):
        crs = None
        for k, v in lines.items():
            crs = v.crs
            break
        return crs

    # dict of line geom that are in loop
    def set_loop_details(self, lines):
        return {k: v for k, v in lines.items() if k in self.loop}

    # just set the geometry and turn it into a multiline
    def set_geometry(self):
        return MultiLineString([v.geometry for k, v in self.loop_details])

    # likely cadidates dict of lines
    def set_likely(self, lines):
        return {k: v for k, v in lines.items() if k in self.likely_names}

    # just set the likely geometry and turn it into a multiline
    def set_likely_geometry(self):
        return MultiLineString([v.geomtery for v in self.likely.values()])

    # return a merged geometry of the loop
    def get_merged_loop_geometry(self):
        return linemerge(self.geometry)

