import math
import shapely.geometry as sg
import warnings
try:
    from shapely.validation import make_valid
except:
    #warnings.showwarning("No shapely >1.8 so no make valid. Using zero buffer instead", ImportWarning)
    def make_valid(x):
        return x.buffer(0)
import numpy as np
from utilities.landxmlSDK.geometryfunctions.otherfunctions import previous_and_next


# calculates bearing between two points on a plane
def calc_bearing(end, start):
    return math.atan2(end.x - start.x, end.y - start.y)


# calcs plane distance between 2 points
def calc_distance(a, b):
    if isinstance(a, sg.Point) and isinstance(b, sg.Point):
        return a.distance(b)


# calcs a plane coordinate deltas from a bearing and a distance
def calc_new_point(bearing, distance):
    delta_east = (math.sin(bearing / (180 / math.pi))) * distance
    delta_north = (math.cos(bearing / (180 / math.pi))) * distance
    return delta_east, delta_north


# adds or removes 360 if above or below 360 degrees
def calc_inside_360(b):
    if b < 0:
        b += 360
    elif b >= 360:
        b -= 360
    return b


# flip a bearing 180 degrees
def flip_bearing(b):
    if b >= 180:
        b -= 180
    else:
        b += 180
    return b


def angle3pt(frm, ref, to, under_180=False):
    """Counterclockwise angle in degrees by turning from a to c around b
        Returns a float between 0.0 and 360.0"""
    frm = tuple(frm.coords)[0]
    ref = tuple(ref.coords)[0]
    to = tuple(to.coords)[0]
    ang = calc_inside_360(math.degrees(math.atan2(to[1]-ref[1], to[0] - ref[0]) - math.atan2(frm[1]-ref[1],
                                                                                             frm[0]-ref[0])))
    if under_180 is True and ang > 180:
        ang = -1 * (360 - ang)

    return ang


# function to calc from angle dicts
def angle_differences(a1, a2):
    # angles
    a = abs(a1.get('angle') - a2.get('angle'))
    t = abs(a1.get('to_bearing') - a2.get('to_bearing'))
    f = abs(a1.get('from_bearing') - a2.get('from_bearing'))
    return a, t, f


def metres2feet(x):
    feet = int(float(x)* 3.2808399)
    inches = ((float(x) * 3.2808399) - feet)*12
    partinches = (round((inches - int(inches))*8)/8)
    inches = int(inches)
    inches = (inches + partinches)
    if inches >= 12:
        feet = int(feet + (inches/12))
        inches = "0"
    else:
        inches = str(inches)
    feet = str(feet) + "' " + inches + "\""
    return feet


def metres2links(x):
    links = float(x)
    links = links * 4.9709695379
    # links = str("%.2f" % links) + " li"
    return links


def define_circle(p1, p2, p3):
    """
    Returns the center and radius of the circle passing the given 3 points.
    In case the 3 points form a line, returns (None, infinity).
    """
    temp = p2[0] * p2[0] + p2[1] * p2[1]
    bc = (p1[0] * p1[0] + p1[1] * p1[1] - temp) / 2
    cd = (temp - p3[0] * p3[0] - p3[1] * p3[1]) / 2
    det = (p1[0] - p2[0]) * (p2[1] - p3[1]) - (p2[0] - p3[0]) * (p1[1] - p2[1])

    if abs(det) < 1.0e-6:
        return None, np.inf

    # Center of circle
    cx = (bc*(p2[1] - p3[1]) - cd*(p1[1] - p2[1])) / det
    cy = ((p1[0] - p2[0]) * cd - (p2[0] - p3[0]) * bc) / det

    radius = np.sqrt((cx - p1[0])**2 + (cy - p1[1])**2)
    return (cx, cy), radius


def define_circle_lsq(p1, p2, p3):
    try:
        from scipy import optimize
    except ImportError as err:
        print('scipy not available using algebraic method', err)
        return define_circle(p1, p2, p3)

    def calc_R(xc, yc):
        """ calculate the distance of each 2D points from the center (xc, yc) """
        return np.sqrt((x - xc) ** 2 + (y - yc) ** 2)

    def f_2(c):
        """ calculate the algebraic distance between the data points and the mean circle centered at c=(xc, yc) """
        ri = calc_R(*c)
        return ri - ri.mean()

    x_y = np.array([p1, p2, p3]).transpose()

    x = x_y[0]
    y = x_y[1]

    x_m = np.mean(x)
    y_m = np.mean(y)

    center_estimate = x_m, y_m
    center_2, ier = optimize.leastsq(f_2, center_estimate)

    xc_2, yc_2 = center_2
    ri_2 = calc_R(*center_2)
    r_2 = ri_2.mean()
    residu_2 = sum((ri_2 - r_2) ** 2)

    return (xc_2, yc_2), r_2


def process_angles(frm, ref, to, ring, points):

    if len(ring) < 2:
        return None
    else:
        if frm is None:
            if points.get(ref) == points.get(ring[-1]):
                frm = ring[-2]
            else:
                frm = ring[-1]
        if to is None:
            if points.get(ref) == points.get(ring[0]):
                to = ring[1]
            else:
                to = ring[0]

        prev_c = points.get(frm)
        item_c = points.get(ref)
        nxt_c = points.get(to)

        a = angle3pt(prev_c.centroid, item_c.centroid, nxt_c.centroid)
        t = calc_inside_360(math.degrees(calc_bearing(item_c, prev_c)))
        td = calc_distance(item_c, prev_c)
        f = calc_inside_360(math.degrees(calc_bearing(nxt_c, item_c)))
        fd = calc_distance(nxt_c, item_c)
        tf = calc_inside_360(math.degrees(calc_bearing(nxt_c, prev_c)))
        tfd = calc_distance(nxt_c, prev_c)
        height = math.sqrt((td * td) + (tfd / 2) * (tfd / 2))
        estimate_centre, estimate_radius = define_circle_lsq(prev_c.coords[:][0], item_c.coords[:][0],
                                                             nxt_c.coords[:][0])
        if estimate_centre is not None:
            estimate_centre = sg.Point(estimate_centre)
        return {'angle': a, 'to_bearing': t, 'from_bearing': f, 'to_from_bearing': tf,
                'to_distance': td, 'from_distance': fd, 'to_from_distance': tfd, 'height': height,
                'est_centre': estimate_centre, 'est_radius': estimate_radius}


def remove_stroked_curves(geom):
    """removes stroked curves from a polygon or linestring, this function eliminates nodes from the original geometry
    and returns an altered geometry that contains chords. This could be cleaned up a bit, should also convert
    lat longs to coords and back again to help with the distance and simplification checks"""

    poly = False
    fgs = []
    if not isinstance(geom, (sg.MultiPolygon, sg.MultiLineString)):
        geoms = [geom]
        multi = False
    else:
        geoms = geom.geoms
        multi = True
    for geom in geoms:
        to_remove = set()
        if isinstance(geom, sg.Polygon):
            poly = True
            geom = sg.LineString(geom.exterior.coords)

        if len(geom.coords[:]) > 7:
            geom = geom.simplify(.01, preserve_topology=True)
            points = {}
            coords = {}
            count = 0
            for point in geom.coords[:]:
                points[count] = sg.Point(point)
                coords[count] = point
                count += 1

            pnt_angles = []
            for frm, pnt, nxt in previous_and_next(sorted(points.keys())):
                d = process_angles(frm, pnt, nxt, sorted(points.keys()), points)
                d['point'] = coords.get(pnt)
                pnt_angles.append(d)

            end_curve = set()
            active = False
            for pnt in pnt_angles:
                if pnt['point'] not in to_remove:
                    pc = pnt['est_centre']
                    pr = pnt['est_radius']
                    for nxt in pnt_angles[pnt_angles.index(pnt) + 1:]:
                        nc = nxt['est_centre']
                        nr = nxt['est_radius']
                        nxt_centre_distance = calc_distance(pc, nc)
                        nxt_rd_dif = abs(pr - nr)
                        if nxt_centre_distance < 20 and nxt_rd_dif < 20 and abs(180 - nxt['angle']) < 20:
                            if abs(180 - pnt['angle']) < 20 and pnt['point'] not in end_curve:
                                to_remove.add(pnt['point'])
                            to_remove.add(nxt['point'])
                            active = True
                        else:
                            if active is True:
                                end_curve.add(nxt['point'])
                            active = False
                            break

        if poly is True:
            ppoints = [p for p in geom.coords[:] if p not in to_remove]
            ppoints += [ppoints[0]]
            new_geom = sg.Polygon(ppoints)
        else:
            new_geom = sg.LineString([p for p in geom.coords[:] if p not in to_remove])

        if new_geom.is_valid is True:
            fgs.append(new_geom)
        else:
            pp = make_valid(new_geom)
            # handle point (perfect circle) or 2 line polygons after stroked curve is removed
            if isinstance(pp, (sg.LineString, sg.Point)) and poly is True:
                pp = sg.Polygon(geom.coords[:] + [geom.coords[:][0]])
            fgs.append(pp)

    if multi is True:
        if poly is True:
            fgs = sg.MultiPolygon(fgs)
        else:
            fgs = sg.MultiLineString(fgs)
    else:
        # return just the first geometry if it wasn't multi to begin with
        fgs = fgs[0]

    return fgs

