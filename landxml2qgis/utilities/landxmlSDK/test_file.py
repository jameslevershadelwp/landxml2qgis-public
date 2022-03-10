import os
from utilities.landxmlSDK.dna.dnareaders import DNAReaders
from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries

# fn = '/Users/jamesleversha/Downloads/1-Ver1-19-11-2021_09-04AM.xml'
# data = landxml.parse(fn, silence=True, print_warnings=False)
# geom = Geometries(data)


fn = r'/Users/jamesleversha/Downloads/PS636062F.xml'
data = landxml.parse(fn, silence=True,print_warnings=False)
geom = Geometries(data)
