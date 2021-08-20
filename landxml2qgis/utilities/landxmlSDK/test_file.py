import pickle

from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from pathlib import Path
import boto3
import pickle as pkl
import requests


import requests
url = 'https://dcm-file-sharing.s3.amazonaws.com/YARRA%20RANGES/LP089369.xml'
headers = {'Host': 'dcm-file-sharing.s3.ap-southeast-2.amazonaws.com'}
r = requests.get(url, headers=headers)
print(r.status_code)