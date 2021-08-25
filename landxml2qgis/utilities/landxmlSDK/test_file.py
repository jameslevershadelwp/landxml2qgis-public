import pickle

from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from pathlib import Path
import boto3
import pickle as pkl
import requests

import shapely.geometry as sg
import shapely.ops as so


data = landxml.parse(r'/Users/jamesleversha/Downloads/LP056005.xml', silence=True, print_warnings=False)

geometry = Geometries(data)

# points = """POINT (145.0247401713883 -37.61724350338275)
# POINT (145.0241452612449 -37.61699149179861)
# POINT (145.0247335898192 -37.61728135758344)
# POINT (145.024343960596 -37.61687186230083)
# POINT (145.0243915493783 -37.61687710411081)
# POINT (145.0245348979184 -37.6174009860479)"""
# points = points.replace('\n', '')
# nps = []
# for point in points.split((')')):
#     p = point.replace('POINT (', '').replace(')', '').replace('\n', '').split(' ')
#     if len(p) > 1:
#         p2 = sg.Point(float(p[0]), float(p[1]))
#         nps.append(p2)
#
#
# points = """POINT (145.0241452612449 -37.61699149179861)
# POINT (145.024343960596 -37.61687186230083)
# POINT (145.0243915493783 -37.61687710411081)
# POINT (145.0247401713883 -37.61724350338275)
# POINT (145.0247335898192 -37.61728135758344)
# POINT (145.0245348979184 -37.6174009860479)
# POINT (145.0241452612449 -37.61699149179861)"""
#
# points = points.replace('\n', '')
# ps = []
# for point in points.split((')')):
#     p = point.replace('POINT (', '').replace(')', '').replace('\n', '').split(' ')
#     if len(p) > 1:
#         p2 = sg.Point(float(p[0]), float(p[1]))
#         ps.append(p2)
# polygon = sg.Polygon(ps)
#
# from geometryfunctions.transformationfunctions import transform_coordinates, build_transformer
#
# project, osr = build_transformer(in_datum=7844, out_datum=28355)
#
# for p in nps:
#     print(transform_coordinates(p, project=project))
#
# print(transform_coordinates(polygon, project=project))