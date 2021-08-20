from utilities.landxmlSDK.geometryfunctions.transformationfunctions import translate_geom, transform_geoms
from utilities.landxmlSDK.dcmgeometry.points import PointGeom


DATUM_LOOKUP = {'GDA2020': 7844,
                'MGA94_Zone54': 28354,
                'MGA94_Zone55': 28355,
                'MGA2020_Zone54': 7854,
                'MGA2020_Zone55': 7855,
                'Local': None
                }


class PointGeomFactory:
    """class to build all point geometries from a land xml file
    sets """
    def get_point_geometries(self, points, datum, monuments):
        geoms = {}
        in_proj = DATUM_LOOKUP.get(datum)

        for point in points:
            monument = monuments.get(point)
            geometry = PointGeom(point, monument)
            geometry.original_crs = in_proj
            geometry.crs = in_proj
            if in_proj is None and geometry.original_geom.x < 200000:
                # unsure if this should be hard coded here, how do we bring it in otherwise?
                geometry.translated_x = 253700
                geometry.translated_y = 5900000
                geometry.geometry = translate_geom(geometry.original_geom,
                                                                 x=geometry.translated_x,
                                                                 y=geometry.translated_y)
                geometry.translated = True
                geometry.original_crs = 7855
                geometry.crs = 7855

            elif in_proj is None:
                geometry.original_crs = 7855
                geometry.crs = 7855

            geoms[point.name] = geometry

        if in_proj == 7844:
            #just get the last item for the estimated zone
            x = geometry.original_geom.x
            if 138 <= x < 144:
                est_zone = 7854
            elif 144 <= x < 150:
                est_zone = 7855
            elif 150 <= x < 166:
                est_zone = 7856
            #set everything else to 7855 for now
            else:
                est_zone = 7855

            geoms = transform_geoms(geoms, in_proj, est_zone)
            for k, v in geoms.items():
                v.crs = est_zone
                geoms[k] = v

        return geoms

    def build(self, lxml_data):
        points = lxml_data.CgPoints[0].get_CgPoint()
        monuments = lxml_data.Monuments
        if len(monuments) > 0:
            monuments = {monument.pntRef: monument for monument in monuments[0].get_Monument()}
        else:
            monuments = {}
        datum = lxml_data.CoordinateSystem[0].horizontalDatum
        return self.get_point_geometries(points, datum, monuments)