import shapely.geometry as sg
import pyproj
from functools import partial
from shapely.ops import transform
import shapely.wkb as swkb
import shapely.affinity as sa
import shapely.ops as so
import numpy as np
import visvalingamwyatt as vw
from pyproj import Transformer

from utilities.landxmlSDK.dcmgeometry.translation import affine_matrix_from_points
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import *
from utilities.landxmlSDK.geometryfunctions.otherfunctions import convert_r, convert_polygon_to_array, cycle_list


def up_to_multi(gs):
    """change shapely object to its multi value, i.e. polygon to multipolygon"""
    if not isinstance(gs, list):
        gs = [gs]
    t = gs[0]
    if isinstance(t, sg.Polygon) or isinstance(t, sg.MultiPolygon):
        g = sg.MultiPolygon(gs)
    elif isinstance(t, sg.LineString) or isinstance(t, sg.MultiLineString):
        g = sg.MultiLineString(gs)
    else:
        g = sg.MultiPoint(gs)

    return g


def build_transformer(in_datum=7855, out_datum=7844):
    """build the geometry transformer, different pyproj versions and osr versions handled in here."""
    in_proj_s = f'epsg:{str(in_datum)}'
    out_proj_s = f'epsg:{str(out_datum)}'
    osr_value = False
    if int(pyproj.__version__[0]) < 2:
        try:
            project = partial(
                pyproj.transform,
                pyproj.Proj(in_proj_s),
                pyproj.Proj(out_proj_s))
        except RuntimeError:
            # for qgis plugin
            try:
                from osgeo import osr, __version__ as osgeoversion
                source_ref = osr.SpatialReference()
                target_ref = osr.SpatialReference()
                source_ref.ImportFromEPSG(in_datum)
                target_ref.ImportFromEPSG(out_datum)
                if int(osgeoversion[0]) > 2:
                    source_ref.SetAxisMappingStrategy(osr.OAMS_TRADITIONAL_GIS_ORDER)
                    target_ref.SetAxisMappingStrategy(osr.OAMS_TRADITIONAL_GIS_ORDER)
                project = osr.CoordinateTransformation(source_ref, target_ref)
                osr_value = True
            except ImportError:
                raise

    else:
        project = pyproj.Transformer.from_crs(in_proj_s, out_proj_s, always_xy=True, skip_equivalent=True).transform
    return project, osr_value


def build_affine_transformer(mat):

    pt_transform = Transformer.from_pipeline(
        f"+proj=pipeline "
        f"+step +proj=affine +xoff={mat[0, 2]} +yoff={mat[1, 2]} "
        f"+s11={mat[0, 0]} +s12={mat[0, 1]}"
        f"+s21={mat[1, 0]} +s22={mat[1, 1]}"
    )
    return pt_transform.transform


def transform_coordinates(g, in_datum=7855, out_datum=7844, project=None, osr_value=False):
    """translate a single geometry with the option of sending in a transformer,
    if not build one inside the function"""
    if project is None:
        project, osr_value = build_transformer(in_datum, out_datum)
    if osr_value is False:
        g = transform(project, g)
    else:
        try:
            from osgeo import ogr
            g = ogr.CreateGeometryFromWkb(g.wkb)
            g.Transform(project)
            g = g.ExportToWkb()
            g = swkb.loads(g)
        except ImportError:
            raise
    return g


def transform_geoms(g, in_proj=None, out_proj=None, mat=None):
    """translate dictionary of geometries using the one transformer"""
    if mat is None:
        if in_proj is None or out_proj is None:
            raise Exception
        else:
            project, osr_value = build_transformer(in_proj, out_proj)
    else:
        project = build_affine_transformer(mat)
        osr_value = False
    trans = {}
    for k, v in g.items():
        v.geometry = transform_coordinates(v.geometry, in_proj, out_proj, project=project, osr_value=osr_value)
        trans[k] = v
    return trans


def translate_geom(geom, x=253700, y=5900000, z=0):
    """translation from a location to another, defaults to central victoria from 1000, 5000 arbitrary coords"""
    if geom.has_z is True:
        return sa.translate(geom, x, y, z)
    else:
        return sa.translate(geom, x, y)


def calculate_close_points(source_points, target_points):
    close_points = None

    return close_points


def helmert_transformation_with_ids(points, target_points, lines=None):
    """ helmert transformation from matrix of points to another matrix of points
        then apply to remaining points"""
    mat = None
    if target_points is not None:
        existing_geom = {}
        oids = tuple()
        oid_lookup = {}
        key_lookup = {}
        for key, value in points.items():
            oid = value.oID
            try:
                oid = int(oid)
                key_lookup[key] = oid
                oid_lookup[oid] = key
                existing_geom[oid] = value.geometry
                oids += (oid,)
            except ValueError:
                pass

        # do some testing here to get distance between points in and out
        # remove the o_datum points that are outside range. ????
        # need to think about the minimum line length here as well

        close = set()
        if lines is not None:
            for item in lines:
                setup = key_lookup.get(item[0])
                target = key_lookup.get(item[1])
                if setup in target_points and target in target_points:
                    xml_s = existing_geom[setup]
                    xml_t = existing_geom[target]
                    d_s = target_points[setup]
                    d_t = target_points[target]
                    xml_dist = calc_distance(xml_s, xml_t)
                    d_dist = calc_distance(sg.Point(d_s), sg.Point(d_t))

                    # this is an percentage value
                    p_dif = abs(((xml_dist / d_dist) * 100) - 100)
                    if p_dif < 10:
                        close.add(setup)
                        close.add(target)
                    else:
                        if setup in close:
                            close.remove(setup)
                        if target in close:
                            close.remove(target)

        oxs = []
        oys = []
        dxs = []
        dys = []
        for key, value in target_points.items():
            if key in close or lines is None:
                ox, oy = existing_geom.get(key).coords[0]
                dx, dy = value.x, value.y
                oxs.append(ox)
                oys.append(oy)
                dxs.append(dx)
                dys.append(dy)

        dxy = np.array([dxs, dys])
        oxy = np.array([oxs, oys])
        try:
            if dxy.shape == oxy.shape and dxy.shape[1] > 1:
                r = affine_matrix_from_points(oxy, dxy, shear=False, scale=True)
                mat = convert_r(r)
            else:
                print('this is an error because the shapes dont match, or the size of the shapes are less'
                      'than 1')
                raise Exception

        except Exception as err:
            print(err)

    return mat


def helmert_trans_unknown(source_polygon, target_polygon):

    if not isinstance(source_polygon,  sg.Polygon):
        source_polygon = source_polygon.geometry
    if not isinstance(target_polygon, sg.Polygon):
        target_polygon = target_polygon.geometry
    distances = get_unknown_rotations(source_polygon, target_polygon)
    distances = get_mbr_rotations(source_polygon, target_polygon, dist=distances)

    # get the smallest area difference
    r = distances.get(min(distances))
    mat = convert_r(r)

    return mat


def handle_first_point_simplify(polygon):
    poly_ext = polygon.exterior.coords[:-1]
    smallest = len(poly_ext)
    poly_ext = cycle_list(poly_ext)
    simple_poly = sg.Polygon(poly_ext + [poly_ext[0]])
    simple_poly = simple_poly.simplify(tolerance=.1)
    new_small = len(simple_poly.exterior.coords[:-1])
    if new_small < smallest:
        polygon = simple_poly
    return polygon


def get_unknown_rotations(source_polygon, target_polygon, dist=None):
    """ helmert transformation from a set of points to a set of points that could or could not be in order
        this method tests all possible orders to find best solution
        polygons should be projected rather than geographic"""

    # remove holes
    source_polygon = sg.Polygon(source_polygon.exterior)
    target_polygon = sg.Polygon(target_polygon.exterior)

    # simplify both polygons using shapely
    source_polygon = source_polygon.simplify(tolerance=.1)
    source_polygon = handle_first_point_simplify(source_polygon)

    target_polygon = target_polygon.simplify(tolerance=.1)
    target_polygon = handle_first_point_simplify(target_polygon)

    # convert to arrays
    source_array = convert_polygon_to_array(source_polygon)
    target_array = convert_polygon_to_array(target_polygon)

    # set some parameters
    if dist is None:
        dist = {}
    dist_ol = len(dist)
    max_number_of_stations = 10
    distance = 100000000000

    # set original values
    original_source_array = source_array.copy()
    original_target_array = target_array.copy()

    x = len(original_source_array)
    if len(original_target_array) < len(original_source_array):
        x = len(original_target_array) - 1

    while distance > 2:
        max_number_of_stations -= 1
        if x > max_number_of_stations:
            x = max_number_of_stations

        if original_source_array.shape[0] > x:
            new_source_array = np.array(vw.simplify(original_source_array, number=x))
        else:
            new_source_array = original_source_array.copy()
        new_target_array = original_target_array.copy()

        for item in range(new_source_array.shape[0]):
            new_target_array = np.array(vw.simplify(new_target_array, number=x))

            if new_target_array.shape == new_source_array.shape:
                dist = get_distance_between_rotations(dist, new_source_array, new_target_array,
                                                      source_polygon, target_polygon)

                if len(dist) > dist_ol:
                    distance = min(dist)

            # cycle through the points
            target_list = new_target_array.tolist()
            target_list = cycle_list(target_list)
            new_target_array = np.array(target_list)

        if max_number_of_stations < 4:
            break

    return dist


def get_mbr_rotations(source_polygon, target_polygon, dist=None):
    """an addition check using the mbr angled rather than the simplified shape, this can be added to the distances
    to potentially getting a better resulting distance between source and target polygons"""
    source_mbr = source_polygon.minimum_rotated_rectangle
    target_mbr = target_polygon.minimum_rotated_rectangle

    # convert to arrays
    source_array = convert_polygon_to_array(source_mbr)
    target_array = convert_polygon_to_array(target_mbr)

    if dist is None:
        dist = {}

    source_coords = convert_polygon_to_array(source_mbr)

    for i in range(4):
        # get the best fit matrix
        dist = get_distance_between_rotations(dist, source_array, target_array, source_polygon, target_polygon,
                                              mbr=True)
        # cycle the vertices as the arrays need to be in the correct order
        # and we have no way of knowing this before
        coords = source_coords.tolist()
        coords = cycle_list(coords)
        source_coords = np.array(coords)

    return dist


def get_distance_between_rotations(dist, base_array, target_array, source_polygon, target_polygon, mbr=False):
    """calcs the areas for multiple rotations of a polygon, returns a dictionary with the
    key being the distance, and the value its affine transformation, the smallest distance should give the best
    transformation value """

    base_array_transposed = base_array.transpose()
    target_array_transposed = target_array.transpose()

    # false false = euclidean
    # true false = affine
    ranger = 2
    if mbr is True:
        ranger = 1
    # shear = True
    # scale = True
    for x in range(ranger):
        if x == 0:
            shear = False
            scale = True
        elif x == 1:
            shear = False
            scale = False
        elif x == 2:
            shear = True
            scale = False
        elif x == 3:
            shear = True
            scale = True

        r = affine_matrix_from_points(base_array_transposed, target_array_transposed, shear=shear, scale=scale)

        try:
            swing = calc_inside_360(np.math.degrees(np.math.atan2(r[1][0], r[1][1])))
        except ValueError as err:
            print(err)
            swing = 45
        # rotate and scale it if its within tolerance
        if swing > 315 or swing < 45:
            mat = convert_r(r)
            transformed = sa.affine_transform(source_polygon, mat)
            if transformed.is_valid:
                distance = target_polygon.difference(transformed).area
                distance2 = transformed.difference(target_polygon).area
                distance = max(distance, distance2)
                dist[distance] = r
            # distance2 = transform.difference(target).area
            # distance = max(distance, distance2)

    return dist


def rubber_sheet(geom, polygon_source, polygon_target, snap_to_line=False, snap_to_line_tolerance=.1):
    # set some thresholds
    angle_threshold = 45
    bearing_threshold = 30
    distance_thresholds = [10, 5, 1]
    distance_threshold = 10
    coord_decimals = polygon_target.coord_decimals

    for sp in polygon_source.polygon_points.get('all'):
        # get all target points and stick them in a multipoint closest point lookup.
        target_points = [polygon_target.point_lookup.get(p) for p in polygon_target.polygon_points.get('all')]

        point_value = polygon_source.point_lookup.get(sp)

        x = True
        while x is True:

            sp_angle = polygon_source.inner_angles.get(sp)
            # get nearest point
            tps = sg.MultiPoint(target_points)

            nearest = so.nearest_points(point_value, tps)
            distance = calc_distance(*nearest)

            tc = tuple(nearest[1].coords)[0]
            if coord_decimals is None:
                tp = polygon_target.coord_lookup.get(tc)
            else:
                tcr = (round(nearest[1].x, coord_decimals), round(nearest[1].y, coord_decimals))
                tp = polygon_target.coord_lookup.get(tcr)

            tp_angle = polygon_target.inner_angles.get(tp)

            # check opposite
            z = True
            # this should be source polygon
            op_points = [polygon_source.point_lookup.get(p) for p in polygon_source.polygon_points.get('all')]
            angle_value, to_value, from_value = angle_differences(tp_angle, sp_angle)
            if (angle_value < angle_threshold and
                    to_value < bearing_threshold and
                    from_value < bearing_threshold and
                    distance < distance_threshold):
                opposite = False
                while z is True:
                    ops = sg.MultiPoint(op_points)
                    op_nearest = so.nearest_points(nearest[1], ops)
                    op_distance = calc_distance(*op_nearest)
                    oc = tuple(op_nearest[1].coords)[0]
                    op = polygon_source.coord_lookup.get(oc)

                    if op == sp:
                        opposite = True
                        z = False
                    else:
                        # check opposite values
                        op_angle = polygon_source.inner_angles.get(op)
                        angle_value, to_value, from_value = angle_differences(op_angle, tp_angle)
                        if (angle_value < angle_threshold and
                                to_value < bearing_threshold and
                                from_value < bearing_threshold and
                                op_distance < distance_threshold and
                                op_distance < distance):  # has to be closer than the other way even if under threshold

                            op_points.pop(op_points.index(sg.Point(oc)))

                        else:
                            opposite = False
                            z = False
                            # if a point is closer but doesnt meet thresholds, check the next closest point.

                    if len(op_points) == 0:
                        z = False

                # set point value to new coordinate
                if opposite is True:
                    al_ass_dist = geom.points[sp].associated_point_distance
                    if al_ass_dist is None:
                        geom.points[sp].set_new_geometry(nearest[1])
                        geom.points[sp].set_associated_id(tp, distance)
                    else:
                        if distance < al_ass_dist:
                            geom.points[sp].set_new_geometry(nearest[1])
                            geom.points[sp].set_associated_id(tp, distance)
                    x = False
                else:
                    target_points.pop(target_points.index(sg.Point(tc)))
            else:
                target_points.pop(target_points.index(sg.Point(tc)))

            if len(target_points) == 0:
                # break loop if no close points are found
                x = False

    if snap_to_line is True:
        source_exterior = polygon_source.geometry.exterior
        for k, v in geom.points.items():
            if v.associated_point_oid is None:
                nearest = so.nearest_points(source_exterior, v.geometry)
                distance = calc_distance(*nearest)
                if distance < snap_to_line_tolerance:
                    v.geometry = nearest[1]
                    geom.points[k] = v

    geom.update_geometries()
    return geom
