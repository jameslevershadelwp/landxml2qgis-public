from itertools import combinations


# gets all common lines between a bunch of geometries from different files:
# take in a iterable of Geom Class
def common_line_generation(geoms):
    common_lines = {}
    for geom in geoms:
        plan = geom.survey_number
        lines = geom.lines
        for k, v in lines.items():
            line_details = common_lines.get(k, {})
            line_details[plan] = v
            common_lines[k] = line_details
            line_details = common_lines.get((k[1], k[0]), {})
            line_details[plan] = v.flip_direction()
            common_lines[(k[1], k[0])] = line_details
    return common_lines


def common_point_pairs(geoms):
    matchy_matchy = {}
    for geom1, geom2 in combinations(geoms, 2):
        points1 = {p.oid for p in geom1.points.values()}
        points2 = {p.oid for p in geom2.points.values()}
        intersection = points1.intersection(points2)
        for point in intersection:
            exist = matchy_matchy.get(point, [])
            exist.append(geom1.survey_number)
            exist.append(geom2.survey_number)
            matchy_matchy[point] = exist
    return matchy_matchy


def get_swing_to_baseline():
    pass
