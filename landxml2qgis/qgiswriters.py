import collections.abc

from qgis.core import QgsGeometry, QgsField, QgsVectorLayer, QgsFeature, QgsProject, QgsCoordinateReferenceSystem, \
    QgsMapLayerStyleManager, QgsMapLayerStyle
from PyQt5.QtCore import QVariant
from qgis.PyQt.QtWidgets import QMessageBox
from utilities.landxmlSDK.dcmgeometry.lines import LineGeom
from utilities.landxmlSDK.dcmgeometry.arcs import ArcGeom
from utilities.landxmlSDK.dcmgeometry.polygons import PolygonGeom
from utilities.landxmlSDK.dcmgeometry.points import PointGeom
from utilities.landxmlSDK.dcmgeometry.loops import Loops, Loop
from utilities.landxmlSDK.geometryfunctions.misclosefunctions import Misclose
from utilities.landxmlSDK.dna.dnareaders import DNAAdjustedMeasures

class QGISLayer:
    def __init__(self, objects, suffix='Point', layer_type='Point', fields_to_remove=None, location='memory',
                 styles=None, process=False):
        self.objects = objects
        if fields_to_remove is None:
            fields_to_remove = []

        self.layer_name = self.set_layer_name()
        self.type_of_layer = layer_type
        self.zone = self.set_zone()
        self.vl = self.set_vector_layer(location, suffix)
        self.data = None
        self.field_types = []
        self.fields = self.set_fields(fields_to_remove)

        if isinstance(styles, collections.abc.Sequence) is False:
            styles = []
        self.styles = styles
        if process is True:
            self.process_layer()

    def set_vector_layer(self, location, suffix=''):
        if not suffix.startswith('_') and len(suffix) > 0:
            suffix = '_' + suffix
        return QgsVectorLayer(self.type_of_layer + '?crs=EPSG:' + self.zone,
                              self.layer_name + suffix, location)

    def set_fields(self, fields_to_remove):
        fields = []
        self.field_types = []
        for p, obs in self.objects.items():
            for ob_name, ob in obs.items():
                for k, v in ob.__dict__.items():
                    if k != 'geometry' and k not in fields_to_remove:
                        # if isinstance(v, int):
                        #     fields.append(QgsField(k, QVariant.Int))
                        #     self.field_types.append((k, 'int'))
                        # elif isinstance(v, float):
                        #     fields.append(QgsField(k, QVariant.Double))
                        #     self.field_types.append((k, 'float'))
                        # else:
                            fields.append(QgsField(k, QVariant.String))
                            self.field_types.append((k, 'str'))
                break
            if len(fields) > 0:
                break
        if len(fields) > 0:
            fields = [QgsField('key', QVariant.String), QgsField('ob_name', QVariant.String)] + fields
            return fields

    def set_layer_name(self):
        if len(self.objects) == 1:
            layer_name = list(self.objects.keys())[0]
        else:
            layer_name = 'ALL'
        return layer_name

    def set_zone(self):
        # sets zone to crs in the first object of the first plan
        zone = ''
        for p, obs in self.objects.items():
            for ob_name, ob in obs.items():
                zone = str(ob.crs)
                break
            if zone != '':
                break
        return zone

    def add_replace_plan(self, plan_name, objects, location='memory'):
        self.objects[plan_name] = objects
        self.layer_name = self.set_layer_name()
        self.vl = self.set_vector_layer(location)

    def write_layer(self):
        pr = self.vl.dataProvider()
        pr.addAttributes(self.fields)

        self.vl.updateFields()
        row = []
        for p, obs in self.objects.items():
            for obn, ob in obs.items():
                row = []
                f = QgsFeature(pr.fields())
                row.append(str(p))
                row.append(str(obn))
                for field, field_type in self.field_types:
                    i = ob.__dict__.get(field)
                    # if field_type == 'float':
                    #     try:
                    #         i = float(i)
                    #     except (ValueError, TypeError):
                    #         i = float('NaN')
                    # elif field_type == 'integer':
                    #     try:
                    #         i = int(i)
                    #     except (ValueError, TypeError):
                    #         i = float('NaN')
                    # else:
                    if i is not None:
                        i = str(i)
                    row.append(i)

                f.setAttributes(row)
                f.setGeometry(ob.geometry)
                pr.addFeature(f)

    def finalise_layer(self):
        QgsProject.instance().addMapLayer(self.vl)
        self.vl.updateExtents()
        self.set_styles()

    def process_layer(self):
        self.write_layer()
        self.finalise_layer()

    def set_styles(self):
        if len(self.styles) > 0:
            style = self.styles[0]
            if style is not None:
                self.vl.loadNamedStyle(str(style))
        if len(self.styles) > 1:
            sm = self.vl.styleManager()
            for s in self.styles[1:]:
                style = QgsMapLayerStyle()
                style.readFromLayer(self.vl)
                if 'lf' in str(s):
                    style_name = 'linksfeet'
                else:
                    style_name = 'meters'
                sm.addStyle(style_name, style)
                sm.setCurrentStyle(style_name)
                self.vl.loadNamedStyle(str(s))
            sm.setCurrentStyle('default')


class QGISGeometry:
    def set_attributes(self, ob):
        for k, v in ob.__dict__.items():
            self.__setattr__(k, v)
            if k == 'geometry':
                self.geometry = self.set_qgis_geom(v)

    def set_qgis_geom(self, v):
        if self.geometry is not None:
            geom = QgsGeometry.fromWkt(v.wkt)
        else:
            geom = None
        return geom


class QGISPointGeometry(PointGeom, QGISGeometry):
    def __init__(self, point_object):
        self.set_attributes(point_object)


class QGISLineGeometry(LineGeom, QGISGeometry):
    def __init__(self, line_object):
        self.set_attributes(line_object)
        self.distance_feet = self.distance2feet()
        self.distance_links = self.distance2links()


class QGISArcGeometry(ArcGeom, LineGeom, QGISGeometry):
    def __init__(self, arc_object):
        self.set_attributes(arc_object)
        self.distance_feet = self.distance2feet()
        self.distance_links = self.distance2links()
        self.radius_feet = self.radius2feet()
        self.radius_links = self.radius2links()
        self.arc_length_feet = self.arclength2feet()
        self.arc_length_links = self.arclength2links()


class QGISPolygonGeometry(PolygonGeom, Misclose, QGISGeometry):
    def __init__(self, polygon_object):
        self.set_attributes(polygon_object)
        self.set_attributes(polygon_object.misclose)
        self.misclose = self.has_misclose


# this will need to change
class QGISLoopGeometry:
    def __init__(self):
        self.geometry = None
        self.loop = None
        self.likely_candidate = None
        self.distances = None
        self.angles = None
        self.crs = None
        self.group_value = None


# this will need to change
class QGISOutliers(DNAAdjustedMeasures, QGISGeometry):
    def __init__(self, outlier_object, crs=None):
        self.set_attributes(outlier_object)
        self.crs = crs

class QGISAllObjects:
    def __init__(self, geom, dna_geom=None, outliers=None):
        self.crs = None
        self.arcs, self.lines = self.set_arc_lines(geom.lines)
        self.points = self.set_points(geom.points)
        self.polygons = self.set_polygons(geom.polygons)
        self.loops = self.set_loops(geom.loops)
        self.dna_arcs = None
        self.dna_lines = None
        self.dna_points = None
        self.dna_polygons = None

        # self.dna_loops = None
        # self.dna_outliers = None
        if dna_geom is not None:
            self.dna_arcs, self.dna_lines = self.set_arc_lines(dna_geom.lines)
            self.dna_points = self.set_points(dna_geom.points)
            self.dna_polygons = self.set_polygons(dna_geom.polygons)
            # self.dna_loops = self.set_loops(dna_geom.loops)
            if outliers is not None:
                # load the outliers here
                self.outliers = self.set_outliers(outliers)

    def set_arc_lines(self, lines):
        arcs = {}
        line = {}
        for k, v in lines.items():
            if isinstance(v, ArcGeom):
                arcs[k] = v
            else:
                line[k] = v
            if self.crs is None:
                self.crs = v.crs
        arcs = self.set_arcs(arcs)
        line = self.set_lines(line)
        return arcs, line

    def set_arcs(self, arcs):
        return {k: QGISArcGeometry(v) for k, v in arcs.items()}

    def set_lines(self, lines):
        return {k: QGISLineGeometry(v) for k, v in lines.items()}

    def set_polygons(self, polygons):
        return {k: QGISPolygonGeometry(v) for k, v in polygons.items()}

    def set_points(self, points):
        return {k: QGISPointGeometry(v) for k, v in points.items()}

    def set_loops(self, loops):
        count = 0
        qloops = {}
        for k, v in loops.items():
            for item in v.loops + v.likely:
                loop = QGISLoopGeometry()
                loop.geometry = QgsGeometry.fromWkt(item.geometry.wkt)
                loop.likely_candidate = item.likely_candidate
                loop.loop = str(item.loop)
                loop.angles = str(v.angles)
                loop.distances = str(v.distances)
                loop.crs = v.crs
                loop.group_value = v.group_value
                qloops[count] = loop
                count += 1
        return qloops

    def set_outliers(self, outliers):
        return {k: QGISOutliers(v, crs=self.crs) for k, v in outliers.items()}









