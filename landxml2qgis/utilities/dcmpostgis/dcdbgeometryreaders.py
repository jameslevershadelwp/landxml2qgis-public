import sqlalchemy
import shapely.geometry as sg

from utilities.landxmlSDK.dcmgeometry.points import PointGeom

class DCDBGeometryReader:
    def __init__(self, conn, point_table_name, line_table_name, polygon_table_name, point_geom_column='geom',
                 line_geom_column='geom', polygon_geom_column='geom', out_proj='7844'):

        self.conn = conn
        self.out_proj = out_proj
        self.points = None
        self.lines = None
        self.polygons = None

        self.sql = None

        self.polygon_table_name = polygon_table_name
        self.point_table_name = point_table_name
        self.line_table_name = line_table_name

        self.point_geom_column = point_geom_column
        self.line_geom_column = line_geom_column
        self.polygon_geom_column = polygon_geom_column

    def shapley_geom_to_postgis(self, geom, crs=7844):
        return f"ST_GeomFromWKB('srid={crs};{geom.wkb}')"

    def process_sql(self, sql=None):
        if sql is None:
            sql = self.sql

        if sql is not None:
            cur = self.conn.cursor()
            cur.execute(sql, )
            f = cur.fetchall()
            cur.close()
            return f
        else:
            print('no sql to process')
            raise

    def get_points_from_ids(self, point_ids):

        sql = f'SELECT point_id, ST_X(ST_TRANSFORM({self.point_geom_column}, {self.out_proj})), ' \
              f'ST_Y(ST_TRANSFORM({self.point_geom_column}, {self.out_proj})) FROM {self.point_table_name} ' \
              f'WHERE point_id IN {point_ids}'

        f = self.process_sql(sql)

        self.points = {k: sg.Point((long, lat)) for k, long, lat in f}

    def get_points_from_area(self, polygon, crs=7844):
        geom = self.shapley_geom_to_postgis(polygon)
        sql = f"SELECT point_id, ST_X(ST_TRANSFORM({self.point_geom_column}, {self.out_proj})), " \
              f"ST_Y(ST_TRANSFORM({self.point_geom_column}, {self.out_proj})) FROM {self.point_table_name} " \
              f"WHERE ST_INTERSECTS({self.point_geom_column}, {geom})"

        f = self.process_sql(sql)

        self.points = {k: sg.Point((long, lat)) for k, long, lat in f}

    def get_lines_from_ids(self, ids):
        # get the points that relate here as well
        pass

    def get_lines_from_area(self, polygon):
        # get the points that relate here as well
        pass

    def get_polygons_from_ids(self, ids, dissolve=False):
        # get the points and lines that relate here as well
        pass

    def get_polygons_from_area(self, area, dissolve=False):
        # get the points and lines that relate here as well
        pass

    def get_polygons_from_point_buffer(self, point, buffer=500, dissolve=False):
        # get the points and lines that relate here as well
        pass