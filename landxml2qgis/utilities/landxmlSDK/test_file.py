import pickle

from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from pathlib import Path
import boto3
import pickle as pkl
import requests

infile = '/Users/jamesleversha/Downloads/LP056005.xml'
data = landxml.parse(infile, silence=True, print_warnings=False)
geom = Geometries(data, mis_tol=.1)
geom.recalc_geometries(geom.ccc, swing=True)
print(geom.lines.get(('CGPNT-455', 'CGPNT-456')).__dict__)
for k, loop in geom.loops.items():
    print(k, loop.__dict__)