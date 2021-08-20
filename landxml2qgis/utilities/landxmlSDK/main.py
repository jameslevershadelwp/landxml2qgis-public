from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from utilities.landxmlSDK.dna.dnareaders import DNAReaders
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import *

import os

# import geopandas as gpd

# filename = r'/Users/jamesleversha/Downloads/TP325001Y.simult.adj'
#
# adj = DNAReaders(filename)
#
# filename = r'/Users/jamesleversha/OneDrive/James/PycharmProjects/dcmvr/test_files/LP060582.xml'
# data = landxml.parse(filename, silence=True, print_warnings=False)

# geom = geometry.Geometries(data)
# dna_out = DNAWriters(geom,'PC378050N')
# dna_out.write_stn_msr_file(out_path='outputs')
# for key, value in adj.adj_measures.items():
#     print(key, value.__dict__)
folder = '/Users/jamesleversha/OneDrive/James/PycharmProjects/dcmvr/test_files'
for filename in os.listdir(folder):
    # if 'PS834001X' in filename:
        fn = os.path.join(folder, filename)
        if fn.endswith('.xml'):
            data = landxml.parse(fn, silence=True, print_warnings=False)
            geom = Geometries(data)

            geom.transform_geometries(7844)
            dnawriter = DNAWriters(geom, filename[:-4], out_path='outputs',
                                    ignored_stns=[x for x in geom.points.keys() if x.startswith('IR-')])
            dnawriter.write_stn_msr_file()


#test polygons
# geom = geometry.Geometries(data)
# df = pd.DataFrame([o.__dict__ for o in geom.polygons.values()])
# gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# gdf.to_file(r'outputs/test_poly_with_rings_7855.gpkg', driver='GPKG')
#
# geom.recalc_geometries(swing=True)
# df = pd.DataFrame([o.__dict__ for o in geom.polygons.values()])
# gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# gdf.to_file(r'outputs/test_poly_recalc__with_rings_7855.gpkg', driver='GPKG')
#
# geom.reset_geometries_to_original_crs()
# df = pd.DataFrame([o.__dict__ for o in geom.polygons.values()])
# gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7844')
# gdf.to_file(r'outputs/test_poly_recalc__with_rings_7844.gpkg', driver='GPKG')
#
# # test lines
# geom = geometry.Geometries(data)
# df = pd.DataFrame([o.__dict__ for o in geom.lines.values()])
# gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# gdf.to_file(r'outputs/test_lines_7855.gpkg', driver='GPKG')
# # geom.recalc_geometries(swing=True)
# # df = pd.DataFrame([o.__dict__ for o in geom.lines.values()])
# # gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# # gdf.to_file(r'outputs/test_lines_recalc_7855.gpkg', driver='GPKG')
#
# # geom.reset_geometries_to_original_crs()
# # df = pd.DataFrame([o.__dict__ for o in geom.lines.values()])
# # gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7844')
# # gdf.to_file(r'outputs/test_lines_recalc_7844.gpkg', driver='GPKG')
#
# # test points
# geom = geometry.Geometries(data)
# df = pd.DataFrame([o.__dict__ for o in geom.points.values()])
# gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# gdf.to_file(r'outputs/test_points_7855.gpkg', driver='GPKG')
# # geom.recalc_geometries(swing=True)
# # df = pd.DataFrame([o.__dict__ for o in geom.points.values()])
# # gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7855')
# # gdf.to_file(r'outputs/test_points_recalc_7855.gpkg', driver='GPKG')
# #
# # geom.reset_geometries_to_original_crs()
# # df = pd.DataFrame([o.__dict__ for o in geom.points.values()])
# # gdf = gpd.GeoDataFrame(df[['name']], geometry=df['geometry'], crs='EPSG:7844')
# # gdf.to_file(r'outputs/test_points_recalc_7844.gpkg', driver='GPKG')
# #
#
#
#
#
