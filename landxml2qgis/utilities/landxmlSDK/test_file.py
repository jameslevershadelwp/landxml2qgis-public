import pickle

from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from pathlib import Path
import boto3
import pickle as pkl
import requests

infile = '/Users/jamesleversha/Downloads/test_download/DAREBIN/BATCH_1/TP423087N/kujQZkmH5.1ppM1GGOHwKFBoq5KUyau7/TP423087N.xml'
data = landxml.parse(infile, silence=True, print_warnings=False)
geometries = Geometries(data, mis_tol=.1)