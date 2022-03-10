from zipfile import ZipFile, ZIP_DEFLATED
import os

import distutils.dir_util


src = '/Users/jamesleversha/OneDrive/James/PycharmProjects/DigitalCadastre/App/landxml2qgis'
distutils.dir_util.copy_tree(src, '/Users/jamesleversha/PycharmProjects/landxml2qgis-public/landxml2qgis',
                             update=1, verbose=1,)

src = '/Users/jamesleversha/PycharmProjects/DigitalCadastre/utilities/landxmlSDK'
distutils.dir_util.copy_tree(src, '/Users/jamesleversha/PycharmProjects/landxml2qgis-public/landxml2qgis/utilities/landxmlSDK',
                             update=1, verbose=1,)


os.chdir('/Users/jamesleversha/PycharmProjects/landxml2qgis-public')
filepath = '/Users/jamesleversha/PycharmProjects/landxml2qgis-public/deploy/landxml2qgis.zip'
filepaths_to_zip = ['landxml2qgis']

for pathname in filepaths_to_zip:
    files = [i for i in os.walk(pathname)]


with ZipFile(filepath, 'w', compression=ZIP_DEFLATED) as open_zip:
    for directory, folders, filenames in files:
        for filename in filenames:
            if 'deploy' not in filename and '__pycache__' not in directory.lower():
                outfilename = os.path.join(directory, filename)
                open_zip.write(os.path.join(directory, filename), outfilename)
