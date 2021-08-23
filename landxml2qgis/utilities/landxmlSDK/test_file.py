import pickle

from utilities.landxmlSDK.landxml import landxml
from utilities.landxmlSDK.dcmgeometry.geometry import Geometries
from utilities.landxmlSDK.dna.dnawriters import DNAWriters
from pathlib import Path
import boto3
import pickle as pkl
import requests

import requests

filename = 'PS539712H'
url = f'https://dcm-file-sharing.s3.amazonaws.com/all/{filename}.xml'
headers = {'Host': 'dcm-file-sharing.s3.ap-southeast-2.amazonaws.com'}
r = requests.get(url, headers=headers)
outfile = f'/Users/jamesleversha/Downloads/test/test/{filename}.xml'
with open(outfile, 'wb') as open_file:
    open_file.write(r.content)
