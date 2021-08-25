import networkx as nx
import statistics
from datetime import date
import shapely.affinity as sa
from shapely.prepared import prep
import os
from pathlib import Path
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import transform_geoms
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import helmert_transformation_with_ids
from utilities.landxmlSDK.geometryfunctions.bearingdistancefunctions import *
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import dd2hp
from utilities.landxmlSDK.geometryfunctions.otherfunctions import previous_and_next, chunker
from utilities.landxmlSDK.dcmgeometry.factories.polygonfactory import PolygonGeomFactory
from utilities.landxmlSDK.dcmgeometry.surveygraph import SurveyGraph
from utilities.landxmlSDK.dcmgeometry.factories.arclinefactory import ArcLineGeomFactory
from utilities.landxmlSDK.dcmgeometry.factories.pointfactory import PointGeomFactory
from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.dcmgeometry.loops import Loops
from utilities.landxmlSDK.landxml.landxml import CgPoint, InstrumentSetup, InstrumentPoint, ReducedObservation
from utilities.landxmlSDK.geometryfunctions.misclosefunctions import loop_checker


class Geometries:
    def __init__(self, landxml, mis_tol=.1):
        self.landxml = landxml
        self.add_missing_points_lines()
        self.points = PointGeomFactory().build(self.landxml)
        self.crs = self.set_crs()
        self.original_crs = self.set_original_crs()
        self.transform_crs = None
        self.lines = ArcLineGeomFactory().build(self.landxml, self.points, self.get_is_2_point(), self.crs)
        self.survey_graph = SurveyGraph(self.lines, self.points)
        self.polygons = PolygonGeomFactory().build(self.landxml, self.lines, self.points, self.crs)
        self.survey_number = self.get_survey_number()
        self.survey_year = self.get_survey_year()
        self.target_points = None
        self.dataframes = {}
        self.ccc = self.set_ccc()
        self.mis_tol = mis_tol
        self.loops = self.set_loop_errors()

    """the following 2 methods link the lines to the points, and the lines to the polygons, vice versa"""

    # instrument setup id to point id reference dictionary
    def get_is_2_point(self):
        if self.landxml is not None:
            return {i.id: i.InstrumentPoint[0].pntRef for i in self.landxml.Survey[0].InstrumentSetup}

    # point id to instrument setup id reference dictionary
    def get_point_2_is(self):
        is2point = self.get_is_2_point()
        if is2point is not None:
            return {v: k for k, v in is2point}

    def add_irregular_lines(self, temp_lines):
        for k, v in temp_lines.items():
            if k not in self.lines:
                self.lines[k] = v

    def get_survey_number(self):
        survey_header = self.landxml.Survey[0].SurveyHeader
        survey_number = survey_header.name
        if survey_number is None:
            survey_number = ''
        return survey_number

    def set_loop_errors(self, mis_tol=None):
        if mis_tol is None:
            mis_tol = self.mis_tol
        if mis_tol is None:
            mis_tol = .1

        loops = loop_checker(self, self.ccc, mis_tol=mis_tol)
        f_loops = {}
        all_likely = []
        for k, v in loops.items():
            f_loops[k] = Loops(k, v, self.lines)
            all_likely.extend(v.get('likely',[]))
        all_likely = set(all_likely)
        for k, v in self.lines.items():
            if v.name in all_likely:
                v.likely_candidate = True

        return f_loops

    def set_ccc(self):
        d = dict(self.survey_graph.graph.degree())
        idname = dict()
        for key, value in d.items():
            idname.setdefault(value, list()).append(key)
        ccc = (sorted(idname[max(idname)]))[0]
        self.points.get(ccc).ccc = True
        return ccc

    def get_survey_year(self):
        survey_header = self.landxml.Survey[0].SurveyHeader
        dates = survey_header.AdministrativeDate
        year = 1900

        if self.survey_number.startswith('TP'):
            year = 1900
        else:
            if not isinstance(dates, list):
                dates = [dates]
            for dated in dates:
                if dated.adminDateType == 'Date of Survey':
                    survey_date = dated.adminDate
                    if survey_date is None:
                        survey_date = date(year=1900, month=1, day=1)
                    try:
                        year = survey_date.year
                    except ValueError:
                        year = 1900
        return year

    def recalc_geometries(self, ref_point=None, swing=False, sf=1, swing_value=None):
        
        if swing is True and swing_value is None:
            swings = []
            for key, value in self.lines.items():
                calcd = math.degrees(calc_bearing(self.points.get(key[1]).geometry,
                                                  self.points.get(key[0]).geometry))
                dif = calcd - value.dd_bearing
                if dif < -180:
                    dif += 360
                swings.append(dif)

            if len(swings) > 0:
                std = statistics.pstdev(swings)
                mean = statistics.mean(swings)
                swings = [x for x in swings if (x > mean - 2 * std) and (x < mean + 2 * std)]
                swing_value = statistics.mean(swings)

        if self.points.get(ref_point) is None:
            connected = nx.is_k_edge_connected(self.survey_graph.graph, 1)
            if connected is False:
                branches = list(nx.k_edge_components(self.survey_graph.graph, 1))
                max_b = max(branches, key=len)
                ref_point = sorted([item for item in max_b])[-1]
            else:
                ref_points = sorted(list(self.survey_graph.graph.nodes))
                ref_point = ref_points[0]


        short_paths = nx.single_source_shortest_path(self.survey_graph.graph, ref_point)
        ref_point_coords = self.points.get(ref_point).geometry.coords[:]

        new_geom = set()
        for key, value in short_paths.items():
            if self.points.get(ref_point).geometry.has_z is False:
                ref_e, ref_n = ref_point_coords[0]
            else:
                ref_e, ref_n, ref_z = ref_point_coords[0]

            for prev, item, nxt in previous_and_next(value):
                if nxt is not None:
                    b_d = self.survey_graph.graph.get_edge_data(item, nxt)
                    bearing = b_d['bearing']
                    if (item, nxt) != b_d['st']:
                        bearing += 180
                        bearing = calc_inside_360(bearing)

                    delta_e, delta_n = calc_new_point(bearing, b_d['distance'] * sf)
                    ref_e += delta_e
                    ref_n += delta_n

                    if nxt not in new_geom:
                        new_geom.add(nxt)
                        self.points[nxt].geometry = sg.Point(ref_e, ref_n)

        if swing is True and swing_value is not None:
            for k, v in self.points.items():
                self.points[k].geometry = sa.rotate(v.geometry, angle=-swing_value,
                                                    origin=self.points.get(ref_point).geometry)
        self.update_geometries()

    def transform_geometries(self, out_proj):

        self.points = transform_geoms(self.points, self.crs, out_proj)
        self.lines = transform_geoms(self.lines, self.crs, out_proj)
        self.polygons = transform_geoms(self.polygons, self.crs, out_proj)
        self.crs = out_proj

    def reset_geometries_to_original_crs(self):
        self.transform_geometries(out_proj=self.original_crs)

    # just take crs of first point
    # assuming only 1 crs for entire plan, this never changes in Aus.
    def set_crs(self):
        for p in self.points.values():
            crs = p.crs
            break
        return crs

    def set_original_crs(self):
        for p in self.points.values():
            crs = p.original_crs
            break
        return crs

    def set_target_points(self, target_points):
        self.target_points = target_points

    def transform_onto_points_with_ids(self, target_points=None):
        # target points is a dictionary of points
        # {point_id: sg.Point()}
        if target_points is None:
            target_points = self.target_points
        self.points = helmert_transformation_with_ids(self.points, target_points, self.lines)
        return self.points

    def add_missing_points_lines(self):
        existing_points = set(point.valueOf_.strip() for point in self.landxml.CgPoints[0].get_CgPoint())
        lxml_parcels = self.landxml.Parcels
        lxml_polygons = []
        if len(lxml_parcels) > 0:
            for x in lxml_parcels:
                lxml_polygons += x.Parcel
        for polygon in lxml_polygons:
            if polygon.parcelType != 'Multipart':
                if (polygon.class_ == 'Easement' and polygon.parcelFormat == 'Standard') is False:
                    if len(polygon.CoordGeom) > 0:
                        coord_geom = polygon.CoordGeom[0]
                        irls = coord_geom.IrregularLine
                        ir_count = 0
                        c = 90000
                        for irregular_line in irls:
                            sp = irregular_line.Start.pntRef
                            tp = irregular_line.End.pntRef
                            for p in [sp, tp]:
                                insetup = InstrumentSetup()
                                insetup.id = p.replace('CGPNT', 'IS')
                                insetup.stationName = insetup.id
                                insetup.instrumentHeight = 0
                                insetup.add_InstrumentPoint(value=InstrumentPoint(p))
                                self.landxml.Survey[0].add_InstrumentSetup(value=insetup)
                            ro = ReducedObservation()
                            default = c + ir_count
                            ro.name = f'OBS-{default}'
                            ro.desc = 'Irregular Line'
                            ro.azimuthType = 'computed'
                            ro.distanceType = 'computed'
                            ro.purpose = 'irregular line'
                            ro.setupID = sp.replace('CGPNT', 'IS')
                            ro.targetSetupID = tp.replace('CGPNT', 'IS')

                            pnt_list = irregular_line.PntList2D
                            geom_value = []
                            chunk_list = None
                            if pnt_list is not None:
                                chunk_list = [i for i in chunker(irregular_line.PntList2D.split(), 2)]
                                for n, e in chunk_list:
                                    if f'{n} {e}' not in existing_points:
                                        point = CgPoint()
                                        point.valueOf_ = f'{n} {e}'
                                        point.name = f'IR-{n}-{e}'
                                        point.pntSurv = 'natural boundary'
                                        point.state = 'existing'

                                        self.landxml.CgPoints[0].add_CgPoint(value=point)

                                        geom_value.append((float(e),float(n)))

                            else:
                                pnt_list = irregular_line.PntList3D
                                if pnt_list is not None:
                                    chunk_list = [i for i in chunker(irregular_line.PntList2D.split(), 3)]
                                    for n, e, z in chunk_list:
                                        if f'{n} {e}' not in existing_points:
                                            point = CgPoint()
                                            point.valueOf_ = f'{n} {e} {z}'
                                            point.name = f'IR-{n}-{e}-{z}'
                                            point.pntSurv = 'natural boundary'
                                            point.state = 'existing'
                                            self.landxml.CgPoints[0].add_CgPoint(value=point)
                                            geom_value.append((float(e), float(n), float(z)))

                            if chunk_list is not None:
                                sgeom = sg.Point(float(chunk_list[0][1]), float(chunk_list[0][0]))
                                egeom = sg.Point(float(chunk_list[-1][1]), float(chunk_list[-1][0]))
                                ro.horizDistance = calc_distance(sgeom, egeom)
                                ro.azimuth = dd2hp(calc_bearing(egeom, sgeom))
                                self.landxml.Survey[0].ObservationGroup[0].add_ReducedObservation(value=ro)
                            ir_count += 1

    def apply_translation(self, x=0, y=0):
        if x != 0 and y != 0:
            for k, v in self.points.items():
                self.points[k].geometry = sa.translate(v.geometry, x, y)
            self.update_geometries()

    def apply_swing(self, angle=0, origin='centre'):
        """origin here should be the point you want to swing the plan around.
        defaulted to the centre of the a point so you wont get any rotation of a point feature if its not set,
        this will generally be the point that you translate the survey onto
        angle is in decimal degrees"""
        if angle != 0:
            for k, v in self.points.items():
                self.points[k].geometry = sa.rotate(angle, origin)
            self.update_geometries()


    def apply_affine_transformation(self, mat=None):
        if mat is not None:
            for k, v in self.points.items():
                self.points[k].geometry = sa.affine_transform(v.geometry, mat)
            self.update_geometries()


    def update_geometries(self):
        self.lines = ArcLineGeomFactory().build(self.landxml, self.points, self.get_is_2_point(), self.crs)
        self.survey_graph = SurveyGraph(self.lines, self.points)
        self.polygons = PolygonGeomFactory().build(self.landxml, self.lines, self.points, self.crs)
        self.loops = self.set_loop_errors()

    def write_geom_to_file(self, points=True, lines=True, arcs=True, polygons=True, loops=True, location=None,
                           file_type='GPKG', same_file=True, df_only=False):


        def drop_columns(df, columns):
            for column in columns:
                if column in df.columns:
                    df.drop(columns=[column], inplace=True)
            return df

        def make_gdf(vals, cols=None):
            if cols is None:
                cols = []

            df = pd.DataFrame(vals)
            df = drop_columns(df, cols)
            gdf = gpd.GeoDataFrame(df.drop(columns='geometry'), geometry=df['geometry'], crs=self.crs)
            gdf['filename'] = self.survey_number
            return gdf

        def write_file(gdf, layer, location, suffix, file_type, same_file):
            out_path = Path(location, self.survey_number)
            out_path.mkdir(exist_ok=True, parents=True)
            if same_file is False or file_type != 'GPKG':
                out_path = Path(out_path, layer + suffix)
                gdf.to_file(str(out_path), driver=file_type)
            else:
                out_path = Path(out_path, self.survey_number + suffix)
                gdf.to_file(str(out_path), driver=file_type, layer=layer)

        extension_lookup = {'GPKG': '.gpkg',
                            'Esri ShapeFile': '.shp'}

        try:
            import pandas as pd
            import geopandas as gpd
        except ImportError as e:
            print(e)
            raise
        if file_type not in {'GPKG', 'Esri Shapefile'}:
            file_type = 'Esri Shapefile'
            print('File type wasnt recognised, setting to shapefile')

        suffix = extension_lookup.get(file_type)

        if location is None and df_only is False:
            print('Location cannot be None')
            raise NotADirectoryError
        elif location is not None:
            if os.path.exists(location) is False and df_only is False:
                print('Location must exist')
                raise NotADirectoryError

        if points is True:
            vals = [v.__dict__ for v in self.points.values()]
            gdf = make_gdf(vals, ['neh', 'original_geom'])
            self.dataframes['points'] = gdf
            if df_only is False:
                write_file(gdf, 'points', location, suffix, file_type, same_file)

        if loops is True:
            vals = [v.__dict__ for v in self.loops.values()]
            gdf = make_gdf(vals)
            self.dataframes['loops'] = gdf
            if df_only is False:
                write_file(gdf, 'loops', location, suffix, file_type, same_file)

        if lines is True or arcs is True:
            lines_vals = []
            arcs_vals = []

            for v in self.lines.values():
                if isinstance(v, LineGeom):
                    lines_vals.append(v.__dict__)
                else:
                    arcs_vals.append(v.__dict__)

            if len(lines_vals) > 0 and lines is True:
                gdf = make_gdf(lines_vals)
                self.dataframes['lines'] = gdf
                if df_only is False:
                    write_file(gdf, 'lines', location, suffix, file_type, same_file)
            if len(arcs_vals) > 0 and arcs is True:
                gdf = make_gdf(arcs_vals)
                self.dataframes['arcs'] = gdf
                if df_only is False:
                    write_file(gdf, 'arcs', location, suffix, file_type, same_file)

        if polygons is True:
            vals = [v.__dict__ for v in self.polygons.values()]
            gdf = make_gdf(vals, ['line_order', 'polygon_points', 'inner_angles', 'coord_lookup',
                                  'point_lookup', 'original_geom'])

            self.dataframes['polygons'] = gdf
            if df_only is False:
                write_file(gdf, 'polygons', location, suffix, file_type, same_file)

    def set_likely_candiates(self):
        for k, v in self.loops:
            for name in v.likely_names:
                line = self.lines.get(name)
                if line is None:
                    line = self.lines.get(line[1], line[0])
                if line is not None:
                    line.likely_candidate = True

    def set_overlapping_lines(self):
        lines_nn = {k: v for k, v in self.lines.items() if v.line_type == 'normal'}
        geoms = []
        rev_lookup = {}
        for k, v in lines_nn.items():
            geoms.append(v.geometry)
            rev_lookup[v.geometry.wkb] = k

        for item, line in lines_nn.items():
            line_geom = line.geometry
            geoms.remove(line_geom)
            if len(geoms) > 0:
                prepped_geom = prep(line_geom)
                hits = list(filter(prepped_geom.intersects, geoms))
                if len(hits) > 0:
                    self.lines[item].overlapping = True
                    for hit in hits:
                        line_hit = rev_lookup[hit.wkb]
                        self.lines[line_hit].overlapping = True








