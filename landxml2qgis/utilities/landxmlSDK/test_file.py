import os
from utilities.landxmlSDK.dna.dnareaders import DNAReaders
from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.geometryfunctions.misclosefunctions import area_tolerances
import networkx as nx
from copy import deepcopy
# fn = '/Users/jamesleversha/Downloads/1-Ver1-19-11-2021_09-04AM.xml'
# data = landxml.parse(fn, silence=True, print_warnings=False)
# geom = Geometries(data)


fn = r'/Users/jamesleversha/Downloads/LP080824 (2).xml'

data = landxml.parse(fn, silence=True, print_warnings=False)
geom = Geometries(data)

geom.transform_geometries(7899)
geom.polygons
print('hi')

#geom.survey_graph.ignore_line_type()

