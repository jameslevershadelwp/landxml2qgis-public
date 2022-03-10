# -*- coding: utf-8 -*-
"""
/***************************************************************************
 LandXML2QGISDialog
                                 A QGIS plugin
 Import Vic, NSW LandXML into QGIS temp layers
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                             -------------------
        begin                : 2019-08-22
        git sha              : $Format:%H$
        copyright            : (C) 2019 by James Leversha, Department of Environment, Land, Water and Planning
        email                : james.k.leversha@delwp.vic.gov.au
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

import os
import sys
from qgis.PyQt import uic
from qgis.PyQt import QtWidgets
from PyQt5 import QtCore
# This loads your .ui file so that PyQt can populate your plugin with the elements from Qt Designer
FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'landxml2qgis_dialog_base.ui'))


class LandXML2QGISDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        self.my_settings = QtCore.QSettings(QtCore.QSettings.IniFormat,
                                       QtCore.QSettings.UserScope,
                                       'DELWP', 'landxml2qgis.py')
        super(LandXML2QGISDialog, self).__init__(parent)
        # Set up the user interface from Designer through FORM_CLASS.
        # After self.setupUi() you can access any designer object by doing
        # self.<objectname>, and you can use autoconnect slots - see
        # http://qt-project.org/doc/qt-4.8/designer-using-a-ui-file.html
        # #widgets-and-dialogs-with-auto-connect
        self.setupUi(self)
        if self.my_settings.contains('dna_dir'):
            self.lineEdit_2.setText(self.my_settings.value('dna_dir'))
        if self.my_settings.contains('dna_outputs'):
            self.lineEdit_3.setText(self.my_settings.value('dna_outputs'))
        if self.my_settings.contains('max_iter'):
            self.lineEdit_8.setText(self.my_settings.value('max_iter'))
        if self.my_settings.contains('iter_thresh'):
            self.lineEdit_9.setText(self.my_settings.value('iter_thresh'))
        if self.my_settings.contains('mis_tol'):
            self.lineEdit_10.setText(self.my_settings.value('mis_tol'))
        if self.my_settings.contains('recalc'):
            self.recalcCheckBox.setChecked(self.my_settings.value('recalc', type=bool))

        self.pushButton.clicked.connect(self.upload_xml)
        self.pushButton_2.clicked.connect(self.set_dna_location)
        self.pushButton_3.clicked.connect(self.set_out_dna_location)
        self.pushButton_4.clicked.connect(self.set_folder_location)


    def upload_xml(self):
        dialog = QtWidgets.QFileDialog()
        fname, _ = dialog.getOpenFileName(self, "Import XML", "", "xml file (*.xml);;adjustment file (*.adj)")
        self.lineEdit.setText(fname)

    def set_dna_location(self):
        dialog = QtWidgets.QFileDialog()
        flags = QtWidgets.QFileDialog.ShowDirsOnly
        fname = dialog.getExistingDirectory(self, 'Select DNA Directory', "", flags)
        self.lineEdit_2.setText(fname)

    def set_out_dna_location(self):
        dialog = QtWidgets.QFileDialog()
        flags = QtWidgets.QFileDialog.ShowDirsOnly
        fname = dialog.getExistingDirectory(self, 'Select DNA Output Directory', "", flags)
        self.lineEdit_3.setText(fname)

    def set_folder_location(self):
        dialog = QtWidgets.QFileDialog()
        flags = QtWidgets.QFileDialog.ShowDirsOnly
        fname = dialog.getExistingDirectory(self, 'Select Input Directory', "", flags)
        self.lineEdit_4.setText(fname)