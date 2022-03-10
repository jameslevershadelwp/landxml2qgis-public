import shapely.geometry as sg
from utilities.landxmlSDK.geometryfunctions.conversionsfunctions import hp2dd
from utilities.landxmlSDK.geometryfunctions.transformationfunctions import transform_coordinates, build_transformer

def try_float(value):
    try:
        value = float(value)
    except ValueError:
        value = None
    return value


def empty_string(value):
    if len(value.strip()) > 0:
        return value.strip()
    else:
        return None


def handle_star(value=None):
    if value is not None:
        if value.strip == '*':
            return True
        else:
            return False
    else:
        return False


class DNAAdjustmentInfo:
    def __init__(self):
        self.version = None
        self.build = None
        self.filename = None
        self.file_created = None
        self.command_line_arg = None
        self.stn_corrections = False
        self.stn_file = None
        self.msr_file = None
        self.ref_frame = None
        self.epoch = None
        self.geoid_model = None
        self.constrained_stn_std = None
        self.free_stn_std = None
        self.iter_treshold = None
        self.max_iter = None
        self.test_conf_level = None
        self.stn_coord_types = None
        self.stn_printed_in_blocks = None
        self.tstat = False


class DNAIteration:
    def __init__(self):
        self.iteration = None
        self.elapsed_time = None
        self.max_stn_name = None
        self.max_stn_enz = None


class DNAGlobalSolution:
    def __init__(self):
        self.solution = None
        self.total_time = None
        self.num_unknown_parameters = None
        self.num_measurements = None
        self.dof = None
        self.chi_squared = None
        self.rig_sig_zero = None
        self.glob_pelzer = None
        self.chi_squared_lower = None
        self.chi_squared_upper = None
        self.chi_squared_test = None
        self.no_redundancy = None

    def test_chi_squared(self, upper=None, lower=None, rig_sig_zero=None):
        if upper is None:
            upper = self.chi_squared_upper
        if lower is None:
            lower = self.chi_squared_lower
        if rig_sig_zero is None:
            rig_sig_zero = self.rig_sig_zero
        if upper is not None and lower is not None and rig_sig_zero is not None:
            if rig_sig_zero < lower:
                return 'WARNING'
            elif rig_sig_zero > upper:
                return 'FAIL'
            else:
                return 'PASS'
        else:
            return 'NO DATA'


class DNAAdjustedMeasures:
    def __init__(self, text_string=None, t_stat=False, crs=None, adjusted_stations=None):
        self.msr_type = None
        self.stn_1 = None
        self.stn_2 = None
        self.stn_3 = None
        self.ignore = None
        self.c = None
        self.msr_value = None
        self.adj_value = None
        self.correction = None
        self.msr_sd = None
        self.adj_sd = None
        self.corrected_sd = None
        self.n_stat = None
        self.t_stat = None
        self.pelzer = None
        self.pre_adj_cor = None
        self.outlier = False
        self.msr_id = None
        self.cluster_id = None
        self.geometry = None
        self.crs = crs
        self.geometry_type = None

        if text_string is not None:
            string1 = text_string[0].ljust(238, ' ')
            string2 = text_string[1].ljust(238, ' ')
            self.msr_type = empty_string(string1[0:2])
            self.stn_1 = empty_string(string1[2:22])
            self.stn_2 = empty_string(string1[22:42])
            self.stn_3 = empty_string(string2[42:62])
            self.ignore = handle_star(string2[62:65])
            self.c = empty_string(string1[65:67])
            self.msr_value = try_float(string2[67:86])
            self.adj_value = try_float(string2[86:105])
            self.correction = try_float(string2[105:117])
            self.msr_sd = try_float(string2[117:130])
            self.adj_sd = try_float(string2[130:143])
            self.corrected_sd = try_float(string2[143:156])
            self.n_stat = try_float(string2[156:167])
            if t_stat is True:
                val = 0
                self.t_stat = try_float(string2[167:178])
            else:
                val = 11
            self.pelzer = try_float(string2[178-val:190-val])
            self.pre_adj_cor = try_float(string2[190-val:204-val])
            if len(string2[204-val:216-val].strip()) > 0:
                self.outlier = True
            else:
                self.outlier = False
            self.msr_id = string2[216-val:226-val].strip()
            self.cluster_id = string2[226-val:236-val].strip()

            self.create_geometry(adjusted_stations)

    def create_geometry(self, adjusted_stns=None):
        if adjusted_stns is not None:
            geometry = []

            if self.stn_3 is not None:
                for item in [self.stn_2, self.stn_1, self.stn_3]:
                    point = adjusted_stns.get(item)
                    if point is not None:
                        geometry.append(point.geometry)
            else:
                for item in [self.stn_1, self.stn_2]:
                    point = adjusted_stns.get(item)

                    if point is not None:
                        geometry.append(point.geometry)
            if len(geometry) > 1:
                self.geometry = sg.LineString(geometry)
                self.geometry_type = 'Line'
            elif len(geometry) == 1:
                self.geometry = sg.Point(geometry[0])
                self.geometry_type = 'Point'


class DNAAdjustedCoordinates:
    def __init__(self, text_string=None, stn_coord_type='ENzPLHh', stn_corrections=False, crs=None, project=None):

        self.stn_name = None
        self.constraint = None
        self.e = None
        self.n = None
        self.zone = None
        self.crs = None
        self.lat_dms = None
        self.lat = None
        self.long_dms = None
        self.long = None
        self.h_ortho = None
        self.h_ellipse = None
        self.x = None
        self.y = None
        self.z = None
        self.sd_e = None
        self.sd_n = None
        self.sd_z = None
        self.cor_e = None
        self.cor_n = None
        self.cor_up = None
        self.description = None
        self.geometry = None

        if stn_coord_type.startswith('ENzPLHh') and text_string is not None:
            text_string = text_string.ljust(300, ' ')
            self.stn_name = text_string[:20].strip()
            self.constraint = text_string[20:25].strip()
            self.e = try_float(text_string[25:40])
            self.n = try_float(text_string[40:55])
            self.zone = try_float(text_string[55:62])
            if crs is not None:
                self.crs = crs
            else:
                self.set_crs()
            self.lat_dms = try_float(text_string[62:76])
            self.lat = hp2dd(self.lat_dms)
            self.long_dms = try_float(text_string[76:91])
            self.long = hp2dd(self.long_dms)
            self.h_ortho = try_float(text_string[91:102])
            self.h_ellipse = try_float(text_string[102:113])
            if 'XYZ' in stn_coord_type:
                self.x = try_float(text_string[113:128])
                self.y = try_float(text_string[128:143])
                self.z = try_float(text_string[143:158])

                if stn_corrections is False:
                    self.sd_e = try_float(text_string[158:170])
                    self.sd_n = try_float(text_string[170:180])
                    self.sd_z = try_float(text_string[180:190])
                    self.description = empty_string(text_string[190:])
                else:
                    self.sd_e = try_float(text_string[158:166])
                    self.sd_n = try_float(text_string[166:172])
                    self.sd_z = try_float(text_string[172:178])
                    self.cor_e = try_float(text_string[178:191])
                    self.cor_n = try_float(text_string[191:202])
                    self.cor_up = try_float(text_string[202:213])
                    self.description = empty_string(text_string[213:])

            else:
                if stn_corrections is False:
                    self.sd_e = try_float(text_string[113:126])
                    self.sd_n = try_float(text_string[126:135])
                    self.sd_z = try_float(text_string[135:145])
                    self.description = empty_string(text_string[145:])
                else:
                    self.sd_e = try_float(text_string[113:121])
                    self.sd_n = try_float(text_string[121:127])
                    self.sd_z = try_float(text_string[127:133])
                    self.cor_e = try_float(text_string[133:146])
                    self.cor_n = try_float(text_string[146:157])
                    self.cor_up = try_float(text_string[157:168])
                    self.description = empty_string(text_string[168:])

            self.set_geometry()

        elif stn_coord_type.startswith('ENzXYZ') and text_string is not None:
            text_string = text_string.ljust(300, ' ')
            self.stn_name = text_string[:20].strip()
            self.constraint = text_string[20:25].strip()
            self.e = try_float(text_string[25:40])
            self.n = try_float(text_string[40:55])
            self.zone = try_float(text_string[55:62])
            if project is None:
                project = self.build_trans()
            point = sg.Point(self.e, self.n)
            point = transform_coordinates(point, project=project[0], osr_value=project[1])
            self.long = point.x
            self.lat = point.y
            self.x = try_float(text_string[63:78])
            self.y = try_float(text_string[78:93])
            self.z = try_float(text_string[93:108])
            self.sd_e = try_float(text_string[108:121])
            self.sd_n = try_float(text_string[121:127])
            self.sd_z = try_float(text_string[127:133])
            self.set_geometry()

    def build_trans(self):
        return build_transformer(in_datum=int(7800 + self.zone), out_datum=7844)

    def set_crs(self):
        if self.zone is not None:
            if isinstance(self.zone, (int, float)):
                # this sets it to MGA2020, probably need to have a clause to handle 94
                crs = int(self.zone + 7800)
            else:
                crs = None
        return crs

    def set_geometry(self):
        try:
            self.geometry = sg.Point(self.long, self.lat)
        except:
            self.geometry = None


class DNAReaders:
    def __init__(self, adj_file):
        self.text = self.parse_adj(adj_file)
        self.section_dict = self.get_sections()
        self.adjustment_info = self.get_adjustment_info()
        self.crs = None
        if self.adjustment_info.ref_frame == 'GDA2020':
            self.crs = 7844
        elif self.adjustment_info.ref_frame == 'GDA94':
            self.crs = 4283

        self.coordinates = self.get_coords()

        if self.crs is None:
            for k, v in self.coordinates.items():
                self.crs = v.crs
                break

        self.adj_measures = self.get_adj_measures()
        self.global_stats = self.get_global_stats()
        self.iterations = self.get_iterations()
        self.landxml = []


    def parse_adj(self, adj_file):
        with open(adj_file, 'r') as open_file:
            return open_file.readlines()

    def get_sections(self, text=None):
        section_dict = {}
        if text is None:
            text = self.text
        dummy_sects = {}
        count = 0
        if len(text) > 0:
            prev_line = ''
            for line in text:
                if ('---------' in line and 'M Station 1 ' not in prev_line
                                            and 'Station             Const' not in prev_line):
                    count += 1
                if '----------' not in line:
                    sect = dummy_sects.get(count, [])
                    if 'M Station 1 ' in line:
                        sect.append('ADJUSTED MEASUREMENTS')
                    if 'Station             Const' in line:
                        sect.append('ADJUSTED COORDINATES')
                    if len(line.strip()) > 0:
                        sect.append(line)
                        dummy_sects[count] = sect
                        prev_line = line.strip()

        for k, v in dummy_sects.items():
            sect = v[0]

            if 'DYNADJUST ADJUSTMENT OUTPUT FILE' in sect:
                section_dict['AdjustmentInfo'] = v
            elif 'ITERATION' in sect:
                its = section_dict.get('Iteration', [])
                its.append(v)
                section_dict['Iteration'] = its
            elif 'SOLUTION' in sect:
                section_dict['GlobalSolution'] = v
            elif 'ADJUSTED MEASUREMENTS' in sect:
                section_dict['AdjMeasure'] = v
            elif 'ADJUSTED COORDINATES' in sect:
                section_dict['AdjCoords'] = v

        return section_dict

    def get_adjustment_info(self):
        adjustment_info = DNAAdjustmentInfo()
        for item in self.section_dict.get('AdjustmentInfo',[1])[1:]:            
            split = item.split(':   ')
            key = split[0].strip()
            if len(split) > 1:
                value = split[1].strip()
            else:
                value = None
            if value is not None:
                if key == 'Version':
                    adjustment_info.version = value
                elif key == 'Build':
                    adjustment_info.build = value
                elif key == 'File created':
                    adjustment_info.file_created = value
                elif key == 'File name':
                    adjustment_info.filename = value
                elif key == 'Command line arguments':
                    if '--output-tstat-adj-msr' in value:
                        adjustment_info.tstat = True
                    adjustment_info.command_line_arg = value
                    if '--stn-corrections' in value:
                        adjustment_info.corrections = True
                elif key == 'Stations file':
                    adjustment_info.stn_file = value
                elif key == 'Measurements file':
                    adjustment_info.msr_file = value
                elif key == 'Reference frame':
                    adjustment_info.ref_frame = value
                elif key == 'Epoch':
                    adjustment_info.epoch = value
                elif key == 'Geoid model':
                    adjustment_info.geoid_model = value
                elif key == 'Constrained Station S.D. (m)':
                    adjustment_info.constrained_stn_std = value
                elif key == 'Free Station S.D. (m)':
                    adjustment_info.free_stn_std = value
                elif key == 'Iteration threshold':
                    adjustment_info.free_stn_std = value
                elif key == 'Maximum iterations':
                    adjustment_info.max_iter = value
                elif key == 'Test confidence interval':
                    adjustment_info.test_conf_level = value
                elif key == 'Station coordinate types':
                    adjustment_info.stn_coord_types = value
                elif key == 'Stations printed in blocks':
                    adjustment_info.stn_printed_in_blocks = value
        return adjustment_info

    def get_coords(self, crs=None):
        adjusted_coords = {}
        adj_coord_lines = self.section_dict.get('AdjCoords', [])
        project = None
        if len(adj_coord_lines) > 0:
            for item in adj_coord_lines[2:]:
                adj_item = DNAAdjustedCoordinates(item, stn_coord_type=self.adjustment_info.stn_coord_types, crs=crs,
                                                  project=project)
                if project is None:
                    project = adj_item.build_trans()
                adjusted_coords[adj_item.stn_name] = adj_item
        return adjusted_coords

    def get_adj_measures(self):
        adjusted_measures = {}
        adj_measure_lines = self.section_dict.get('AdjMeasure', [])
        if len(adj_measure_lines) > 0:
            main_line = ''
            for item in adj_measure_lines[2:]:
                if len(item[2:21].strip()) > 0:
                    main_line = item
                    value = [main_line, main_line]
                else:
                    value = [main_line, item]

                if item[0:2].strip() in ['D', 'A'] and len(item[42:61].strip()) == 0:
                    pass
                else:
                    adj_item = DNAAdjustedMeasures(value, crs=self.crs, adjusted_stations=self.coordinates,
                                                   t_stat=self.adjustment_info.tstat)
                    adjusted_measures[(adj_item.stn_1, adj_item.stn_2, adj_item.stn_3, adj_item.msr_type)] = adj_item
        return adjusted_measures

    def get_global_stats(self):
        global_stats = DNAGlobalSolution()
        global_lines = self.section_dict.get('GlobalSolution')

        for item in global_lines:
            split = item.split('   ')
            key = split[0].strip()
            split = [i for i in split if len(i.strip()) > 0]
            if len(split) > 1:
                value = split[1].strip()
            else:
                value = None
            if value is not None:
                if key == 'SOLUTION':
                    global_stats.solution = value
                elif key == 'Total time':
                    global_stats.total_time = value
                elif key == 'Number of unknown parameters':
                    global_stats.num_unknown_parameters = try_float(value)
                elif key == 'Number of measurements':
                    global_stats.num_measurements = try_float(value)
                elif key == 'Degrees of freedom':
                    global_stats.dof = try_float(value)
                elif key == 'Chi squared':
                    global_stats.chi_squared = try_float(value)
                elif key == 'Rigorous Sigma Zero':
                    global_stats.rig_sig_zero = try_float(value)
                elif key == 'Global (Pelzer) Reliability':
                    value = value.strip().split(' (')[0]
                    global_stats.glob_pelzer = try_float(value)
                elif 'Chi-Square test' in key:
                    if 'NO REDUNDANCY' in item:
                        global_stats.no_redundancy = True
                    else:
                        global_stats.no_redundancy = False

                    value = value.split('<')
                    global_stats.chi_squared_lower = try_float(value[0])
                    global_stats.chi_squared_upper = try_float(value[2])
                    global_stats.chi_squared_test = global_stats.test_chi_squared()

        return global_stats

    def get_iterations(self):
        iterations = {}
        iter_lines = self.section_dict.get('Iteration', [])
        for line in iter_lines:
            iter_item = DNAIteration()
            for item in line:
                item = item.strip().split('  ')
                item = [i for i in item if len(i.strip()) > 0]
                if len(item) > 1:
                    key, value = item
                else:
                    key = ''
                    value = item[0]
                if key == 'ITERATION':
                    iter_item.iteration = try_float(value)
                elif key == 'Elapsed time':
                    iter_item.elapsed_time = value
                elif key == 'Maximum station correction':
                    value = value.replace('Station', '').strip()
                    iter_item.max_stn_name = value
                elif '(e, n, up)' in value:
                    iter_item.max_stn_enz = value.split('(')[0]
            iterations[iter_item.iteration] = iter_item
        return iterations

    def get_outliers(self):
        return {k: v for k, v in self.adj_measures.items() if v.outlier is True}


