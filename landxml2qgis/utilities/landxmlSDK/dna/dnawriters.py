from pathlib import Path
from datetime import datetime
import boto3
import os
import json
from copy import deepcopy

from utilities.landxmlSDK.geometryfunctions.otherfunctions import sort_by_tuple
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import dd2hp
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import transform_geoms


class AprioriValues:
    def __init__(self, name, b, d, ppm):
        self.name = name
        self.bearing_std = b
        self.distance_std = d
        self.ppm = ppm


class DNAWriters:
    def __init__(self, geometries, filename, output_dir=Path(), out_datum=7844, survey_year=None, survey_type='surveyed',
                 constrained_marks=None, ignored_stns=None, profile_location=None, profile='dcmvr'):
        self.points = geometries.points  # dict of PointGeom items taken from the dcmgeometry class
        self.lines = geometries.lines  # dict of bearings and distances from LineGeom dcmgeometry class
        self.filename = filename
        self.out_path = output_dir
        self.in_datum = geometries.crs
        if self.in_datum is None:
            self.in_datum = 7855
        self.out_datum = out_datum
        self.exclude_lines = set()
        if survey_year is not None:
            self.survey_year = survey_year
        else:
            self.survey_year = geometries.survey_year
        self.survey_type = survey_type
        self.ignored_obs = self.get_ignored_obs(ignored_stns)
        self.constrained_marks = self.set_constrained(constrained_marks)
        self.correlate = self.set_correlate()
        self.profile_location = self.set_profile_location(profile_loc=profile_location)
        self.profile_name = self.set_profile_name(name=profile)
        self.profile, self.ufv = self.read_profile_json()
        self.stds = self.get_stds()

    def set_profile_name(self, name='dcmvr'):
        """profile name from the apriori json file located in resources"""
        self.profile_name = name
        return name

    def set_profile_location(self, profile_loc=None):
        if profile_loc is None:
            profile_loc = 'resources/aprioris.json'
        """sets the location of the apriori file if not default"""
        self.profile_location = profile_loc
        return profile_loc

    def read_profile_json(self, profile_name=None, profile_loc=None):
        """reads the apriori file"""
        def handle_items(vals, expanded=None):
            if expanded is None:
                expanded = {}
            for item in vals:
                measure_types = item.get('measure_types')
                min_year = item.get('min_year')
                max_year = item.get('max_year')
                for year in range(min_year, max_year):
                    ex = expanded.get(year, {})
                    for measure in measure_types:
                        types = measure.get('types', [])
                        values = measure.get('values')
                        for typed in types:
                            ex[typed] = values
                    expanded[year] = ex
            return expanded
        if profile_name is None:
            profile_name = self.profile_name
        if profile_loc is None:
            profile_loc = self.profile_location

        with open(profile_loc, 'r') as openjson:
            d = json.load(openjson)
            profile = d.get(profile_name)
            if profile is None:
                profile = d.get('default')

        defaults = profile.get('default_values', [])
        expanded_dict = handle_items(defaults)
        expanded_dict = handle_items(profile.get('values', {}), expanded_dict)

        if profile.get('use_file_values', 'True') == 'True':
            ufv = True
        else:
            ufv = False

        return expanded_dict, ufv

    @staticmethod
    def get_stds_based_on_distance(stds, distance):
        """sets the standard devation of a measurement based on its distance from the apriori file"""
        if isinstance(stds, list):
            std = None
            for item in stds:
                min_dist = item.get('min_dist')
                max_dist = item.get('max_dist')
                if min_dist <= distance < max_dist:
                    std = item.get('value')
                    break
            if std is None:
                std = stds[-1].get('value')
        else:
            std = stds
        return std

    def get_stds(self):
        """gets the standard deviations from the apriori file based on survey year, sets a dictionary value
        for using aprioris if they are set in the file or not, this flag is set in the aprioris.json profile"""
        if self.survey_type not in {'surveyed'} or self.survey_year is None \
                or self.survey_year < 1700 or self.survey_year > 9999:
            s_year = 1850
        else:
            s_year = self.survey_year

        stds, ufv = self.read_profile_json()
        type_stds = stds.get(s_year)
        if type_stds is None:
            stds, ufv = self.read_profile_json('default')
            type_stds = stds.get(s_year)

        type_stds[None] = type_stds.get('default')
        type_stds['use_file_values'] = ufv
        return type_stds

    @staticmethod
    def get_stds_lists(value, default_stds):
        """sets all the direction and distance aprioris in a list of dicts ready to be written to file"""
        dir_line_type = value.azimuth_type
        dist_line_type = value.distance_type
        use_file_values = default_stds.get('use_file_values', True)

        if use_file_values is True:

            dir_stds = value.bearing_std
            if dir_stds is None:
                dir_items = default_stds.get(dir_line_type)
                if dir_items is not None:
                    dir_stds = dir_items.get('bearing')
                else:
                    dir_stds = default_stds.get('default').get('bearing')
                    dir_line_type = 'default'
            if not isinstance(dir_stds, list):
                dir_stds = [{'min_dist': 0, 'max_dist': 9999999, 'value': dir_stds}]

            dist_stds = value.distance_std
            if dist_stds is None:
                dist_items = default_stds.get(dist_line_type)
                if dist_items is not None:
                    dist_stds = dist_items.get('distance')
                else:
                    dist_stds = default_stds.get('default').get('distance')
                    dist_line_type = 'default'

            if not isinstance(dist_stds, list):
                dist_stds = [{'min_dist': 0, 'max_dist': 9999999, 'value': dist_stds}]

            ppms = default_stds.get(dist_line_type).get('ppm')
            if not isinstance(ppms, list):
                ppms = [{'min_dist': 0, 'max_dist': 9999999, 'value': ppms}]
        else:
            dir_stds = default_stds.get(dir_line_type).get('bearing')
            dist_stds = default_stds.get(dist_line_type).get('distance')
            ppms = default_stds.get(dist_line_type).get('ppm')
        return dir_stds, dist_stds, ppms

    def set_correlate(self, correlate=False):
        """this sets the dynadjust grouping of directions to correlate so that when the file is written you will only
        get one set of directions per set rather than all directions available for that station in a group"""
        self.correlate = correlate
        return correlate

    def get_ignored_obs(self, ignored_obs=None):
        # TODO this needs testing
        """this is used if there are ignored stations, these will not be used in
        the adjustment """
        new_ignored = set()
        if ignored_obs is not None:
            new_ignored = {i for i in ignored_obs}
        used = set()
        for k, v in self.lines.items():
            if v.azimuth_type == 'Ignored' or v.distance_type == 'Ignored':
                if k[0] not in used:
                    new_ignored.add(k[0])
                if k[1] not in used:
                    new_ignored.add(k[1])
            else:
                used.add(k[0])
                used.add(k[1])
                if k[0] in new_ignored and k[0] not in ignored_obs:
                    new_ignored.remove(k[0])
                if k[1] in new_ignored and k[1] not in ignored_obs:
                    new_ignored.remove(k[1])

        return new_ignored

    def set_constrained(self, constrained_marks=None):
        """sets the constrained mark names that the user want to make constrained (CCC)"""
        if constrained_marks is None:
            constrained_marks = []
            for k, v in self.points.items():
                if v.ccc is True:
                    constrained_marks.append(k)
            self.constrained_marks = constrained_marks
        if isinstance(constrained_marks, list):
            self.constrained_marks = constrained_marks
        return constrained_marks

    def set_exclude(self, line_names=None):
        """manually exclude some names from the adjustment, these are set here with a set of line names"""
        if line_names is None:
            line_names = set()
        self.exclude_lines = line_names

    def create_stn_header(self):
        """
        creates the dna station header line, this contains the header information required by dynadjust to
        run a minimally constrained adjustment
        :param number_of_stations: the number of stations that are going to be written into the file
        :return: stn: the station header
        """
        # dt1 = '01.01.1994'
        if self.out_datum == 7844:
            g = 'GDA'
        else:
            g = 'GDA'

        dt = datetime.strftime(datetime.now(), '%d.%m.%Y')
        header = ('!#=DNA'.rjust(6) +
                  '3.01'.rjust(6) +
                  'STN'.rjust(3) +
                  dt.rjust(14) +
                  f'{g}2020'.rjust(14) +
                  '01.01.2020'.rjust(14) +
                  (str(len(self.points))).rjust(10))
        return [header]

    def create_stn_lines(self):
        """
        creates the dna station file data lines, is a list that contains pre-formatted strings that will be written to
        the stn file, setting the elevation at zero for all items
        :return: a list of items to be writen as lines in the dynadjust stn file.
        """
        stn = []
        elevation = '0'
        projection = 'UTM'
        zone = str(self.in_datum)[-2:]
        if self.in_datum is None:
            self.in_datum = 7855
        if self.out_datum == 7844:
            projection = 'LLH'
            zone = ''

        if self.in_datum != self.out_datum:
            self.points = transform_geoms(self.points, self.in_datum, self.out_datum)

        pnts = {pt: v for pt, v in self.points.items() if v.point_type == 'sideshot' and  pt not in self.ignored_obs}
        if self.constrained_marks is None:
            constrained = [sorted(pnts.keys())[0]]
        else:
            constrained = self.constrained_marks

        pnts = {pt: v for pt, v in self.points.items() if pt not in self.ignored_obs}
        for pt, val in pnts.items():
            if pt in constrained:
                const = 'CCC'
            else:
                const = 'FFC'

            x = val.geometry.x
            y = val.geometry.y
            # set to vic
            if x < 100000 and projection != 'LLH':
                x += 250000
                y += 5900000

            if projection == 'LLH':
                y = dd2hp(float(y))
                x = dd2hp(float(x))
                e = "{0:.9f}".format(y).rjust(20)
                n = "{0:.9f}".format(x).rjust(20)
            else:
                e = "{0:.3f}".format(float(x)).rjust(20)
                n = "{0:.3f}".format(float(y)).rjust(20)

            line = (pt[:20].ljust(20)  # Pt ID
                    + const.ljust(3)
                    + ''.ljust(1)  # Constraint
                    + projection.ljust(3)  # Projection
                    + e  # Easting
                    + n  # Northing
                    + elevation.rjust(20)  # Elevation
                    + zone.rjust(3))  # Hemisphere/Zone input
            if const == 'CCC':
                stn = [line] + stn
            else:
                stn.append(line)
        return stn

    def write_stn_file_encode(self):
        """
        creates a binary linestring for dna stn format groups the measurements and adds the estimates that can be written
        to a file in AWS
        :return:
        """
        lines = self.create_stn_header()
        lines += self.create_stn_lines()

        line_string = ''
        for line in lines:
            line_string += line + "\n"

        line_string = line_string.encode('UTF-8')
        return line_string

    def write_stn_file(self, filename=None, out_path=None):
        """Writes the station file for Dynadjust"""
        if out_path is None:
            out_path = Path(self.out_path)
        else:
            out_path = Path(out_path)
        if filename is None:
            filename = self.filename

        out_path.mkdir(parents=True, exist_ok=True)
        out_path = Path(out_path, str(filename) + '.stn')
        lines = self.write_stn_file_encode()
        lines = lines.decode('UTF-8')
        with open(out_path, 'w') as stn_file:
            stn_file.write(lines)
        return out_path

    def group_obs(self):
        """groups all the observations in the file to the setup points"""
        obs = {}
        all_points = {}
        dist_obs = {}

        all_obs = {}
        for k, v in self.lines.items():
            all_obs[k] = v
            x = deepcopy(v)
            x.flip_direction()
            all_obs[(k[1], k[0])] = x
        for k, v in all_obs.items():
            if v.line_type not in self.exclude_lines:
                if v.azimuth_type != 'Ignored':
                    exist_obs = obs.get(k[0], [])
                    all_points[k[0]] = self.points.get(k[0])
                    all_points[k[1]] = self.points.get(k[1])
                    exist_obs.append((k[1]))
                    obs[k[0]] = exist_obs
                if v.distance != 0:
                    if v.distance_type != 'Ignored' and v.reversed is False:
                        dist_obs[k] = v
        obs = {k: v for k, v in obs.items() if len(v) > 1}
        return obs, dist_obs

    def create_msr_dir_lines(self, obs):
        """creates the list of measurement direction lines to write into the measurement Dynadjust file"""
        # line_lookups = {k:v for k,v in line_lookups.items() if v.get('bearing_type' != 'Ignored')}
        lines = []

        for k, v in obs.items():
            key_value = k
            nv = []

            # sort to get clockwise angle order
            for item in v:
                line1 = self.lines.get((k, item))

                if line1 is None:
                    line1 =  deepcopy(self.lines.get((item, k)))
                    line1.flip_direction()

                b1 = line1.hp_bearing
                nv.append((item, b1))
            nv = [item[0] for item in sort_by_tuple(nv)]
            row1 = ''
            for item in nv:
                line1 = self.lines.get((k, item))
                if line1 is None:
                    line1 = deepcopy(self.lines.get((item, k)))
                    line1.flip_direction()
                dir_std = line1.bearing_std

                if dir_std is None:
                    dir_stds, dist_stds, ppm_stds = self.get_stds_lists(line1, self.stds)
                    d1 = line1.distance
                    dir_std = self.get_stds_based_on_distance(dir_stds, d1)

                std = '{:.4f}'.format(float(dir_std))

                b1 = line1.hp_bearing

                d, ms = str(b1).split('.')
                ms = ms.ljust(4, '0')
                m = ms[:2]
                s = ms[2:4]
                if len(ms) > 4:
                    millis = ms[4:6]
                else:
                    millis = '0'
                millis = millis.ljust(2, '0')

                if self.correlate is True:
                    if item == nv[0]:
                        c2 = item
                        c3 = str(len(nv) - 1)
                    else:
                        c2 = ''
                        c3 = item

                    row = ('D'.rjust(1) +
                           ''.rjust(1) +
                           key_value[:20].rjust(20) +
                           c2[:20].rjust(20) +
                           c3[:20].rjust(20) +
                           ''.rjust(14) +
                           d.rjust(3) + ' ' +
                           m.ljust(2) +
                           (' ' + s + '.' + millis).ljust(8) +
                           std.rjust(9))
                    key_value = ''
                    lines.append(row)
                else:
                    if item == nv[0]:
                        row1 = ('D'.rjust(1) +
                                ''.rjust(1) +
                                key_value[:20].ljust(20) +
                                item[:20].ljust(20) +
                                '1'.ljust(20) +
                                ' '.ljust(14) +
                                d.rjust(3) + ' ' +
                                m.ljust(2) +
                                (' ' + s + '.' + millis).ljust(8) +
                                std.rjust(9))
                    else:
                        lines.append(row1)
                        row = ('D'.ljust(1) +
                               ''.ljust(1) +
                               ''.ljust(20) +
                               ''.ljust(20) +
                               item[:20].ljust(20) +
                               ''.ljust(14) +
                               d.rjust(3) + ' ' +
                               m.ljust(2) +
                               (' ' + s + '.' + millis).ljust(8) +
                               std.rjust(9))
                        key_value = ''
                        lines.append(row)

        return lines

    def create_msr_dist_lines(self, dist_obs, ins_height=0, targ_height=0):
        """creates a list of measurement distance lines for the dynadjust file"""
        lines = []
        for k, v in dist_obs.items():
            d = v.distance
            dist_std = v.distance_std
            dir_stds, dist_stds, ppm_stds = self.get_stds_lists(v, self.stds)
            if dist_std is None:
                # set the standard devation of the line based on its distance
                dist_std = self.get_stds_based_on_distance(dist_stds, d)
            ppm = self.get_stds_based_on_distance(ppm_stds, d)
            if ppm is None:
                ppm = 0
            ppm_value = float(d) * float(ppm) / 1000000.
            dist_std = float(dist_std) + ppm_value
            line = ('S'.rjust(1)
                    + ''.ljust(1)
                    + k[0][:20].ljust(20)
                    + k[1][:20].ljust(20)
                    + ''.ljust(20)
                    + ('{:.4f}'.format(float(d))).ljust(14)
                    + ''.ljust(14)
                    + ('{:.4f}'.format(float(dist_std)).rjust(9))
                    + ('{:.4f}'.format(float(ins_height)).rjust(7))
                    + ('{:.4f}'.format(float(targ_height)).rjust(7)))
            lines.append(line)
        return lines

    @staticmethod
    def create_msr_header(obs, dist_obs):
        """Creates the measurement file header needed for a dynadjust file"""
        obscount = 0
        for item in obs.values():
            obscount += len(item) - 1
        obscount += len(dist_obs)
        now = datetime.now()
        date = now.strftime('%d.%m.%Y')
        date2 = '01.01.2020'
        g = 'GDA'
        header = ('!#=DNA'.rjust(6) +
                  '3.01'.rjust(6) +
                  'MSR'.rjust(3) +
                  date.rjust(14) +
                  f'{g}2020'.rjust(14) +
                  date2.rjust(14) +
                  str(obscount).rjust(10))

        return [header]

    def write_msr_file_encode(self):
        """
        creates a binary linestring for dna msr format groups the measurements and adds the estimates
        that can be written to a file in AWS
        """

        obs, dist_obs = self.group_obs()
        lines = self.create_msr_header(obs, dist_obs)
        lines += self.create_msr_dir_lines(obs)
        lines += self.create_msr_dist_lines(dist_obs)
        line_string = ''
        for line in lines:
            line_string += line + "\n"

        line_string = line_string.encode('UTF-8')
        return line_string

    def write_msr_file(self, filename=None, out_path=None):
        if out_path is None:
            out_path = Path(self.out_path)
        else:
            out_path = Path(out_path)
        if filename is None:
            filename = self.filename

        out_path.mkdir(parents=True, exist_ok=True)
        out_path = Path(out_path, str(filename) + '.msr')
        lines = self.write_msr_file_encode()
        lines = lines.decode('UTF-8')
        with open(out_path, 'w') as msr_file:
            msr_file.write(lines)
        return out_path

    def write_stn_msr_encode(self):
        """writes out both station and measurement files to a variable rather than file"""
        stn_lines = self.write_stn_file_encode()
        msr_lines = self.write_msr_file_encode()
        return stn_lines, msr_lines

    def write_stn_msr_file(self, filename=None, out_path=None):
        """writes out both station and measurement files"""
        stn_file = self.write_stn_file(filename, out_path)
        msr_file = self.write_msr_file(filename, out_path)
        return stn_file, msr_file

    def write_stn_msr_to_bucket(self, bucket_name=None, key_loc=''):
        if bucket_name is not None:
            stn_lines, msr_lines = self.write_stn_msr_encode()
            s3r = boto3.resource('s3')

            slog = os.path.join(key_loc, self.filename + '.stn')
            obj = s3r.Object(bucket_name, slog)
            obj.put(Body=stn_lines)

            mlog = os.path.join(key_loc, self.filename + '.msr')
            obj = s3r.Object(bucket_name, mlog)
            obj.put(Body=msr_lines)

            return self.filename + '.stn', self.filename + '.msr'
