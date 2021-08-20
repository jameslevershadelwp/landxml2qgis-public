from zipfile import ZipFile, ZIP_DEFLATED
import os

os.chdir('/Users/jamesleversha/PycharmProjects/DigitalCadastre')
filepath = '/Users/jamesleversha/Downloads/landxml2qgis.zip'
filepaths_to_zip = ['App/landxml2qgis', 'utilities']
with ZipFile(filepath, 'w', compression=ZIP_DEFLATED) as open_zip:
    for pathname in filepaths_to_zip:
        for directory, folders, filenames in os.walk(pathname):
            for filename in filenames:
                if 'deploy' not in filename:
                    outfilename = os.path.join('landxml2gis', directory, filename)
                    outfilename = outfilename.replace('App/landxml2qgis', '')
                    open_zip.write(os.path.join(directory, filename), outfilename)
