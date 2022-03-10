import os
import platform as pf
from inspect import getsourcefile
import subprocess
from pathlib import Path
import warnings

from utilities.landxmlSDK.dna.dnawriters import DNAWriters


class DNARunner:
    def __init__(self, dna_dir, geoid_fp=Path(), multi_thread=False, max_iter=10,
                 iter_thresh=.0005, output_dir=Path(), filename=None):
        self.cwd = Path(os.path.split(os.path.abspath(getsourcefile(lambda: 0)))[0])
        self.system_type = pf.system()
        self.dna_dir = dna_dir
        self.max_iterations = max_iter
        self.iter_threshold = iter_thresh
        self.output_dir = self.set_output_dir(output_dir)
        if filename.endswith('.xml'):
            filename = filename.replace('.xml', '')
        self.filename = filename
        self.prefix = ''
        self.suffix = ''
        self.ext = ''
        self.convert_stn_heights = None
        self.geoid_fp = self.set_geoid_location(geoid_fp)
        self.dms_msr_format = None
        self.sep = ''
        self.multi_thread = multi_thread
        self.set_run_info()

        self.dna_import = self.set_dna_fps('import')
        self.dna_reftran = self.set_dna_fps('reftran')
        self.dna_adjust = self.set_dna_fps('adjust')
        self.dna_plot = self.set_dna_fps('plot')
        self.dna_segment = self.set_dna_fps('segment')
        self.dna_geoid = self.set_dna_fps('geoid')
        self.execution_lines = []
        self.dms_msr_format = 2
        self.adj_type = '.simult.adj'
        self.stn_coord_types = 'ENzPLHh'
        self.output_type = '--output-adj-msr'
        self.cmd_output = None
        self.results_file = None

        # add more dna settings here.

    def set_dna_fps(self, module):
        fp = Path(self.dna_dir, self.prefix + module + self.suffix)
        if fp.exists():
            return fp
        else:
            pass
            # warnings.showwarning(f'{module} is not present at {fp}')

    def set_output_dir(self, output_dir=None):
        if output_dir is None:
            # warnings.showwarning(f'No output directory set, setting to {self.cwd}')
            return self.cwd
        else:
            return Path(output_dir)

    def build_execution_cmd(self, msr_locations, stn_locations):
        if isinstance(stn_locations, list):
            fn = stn_locations[0]
            stn_locations = [str(i) for i in stn_locations]
            stn_location = ' '.join(stn_locations)
        else:
            fn = stn_locations
            stn_location = stn_locations

        if isinstance(msr_locations, list):
            msr_locations = [str(i) for i in msr_locations]
            msr_location = ' '.join(msr_locations)
        else:
            msr_location = msr_locations

        if self.filename is None:
            self.filename = fn.parts[-1].replace('.stn', '')
            # warnings.showwarning(f'No filename set, setting to {self.filename}')

        lines = [
            f'cd "{self.output_dir}"',
            f'"{str(self.dna_import)}" -n "{self.filename}" {str(stn_location)} {str(msr_location)} -r GDA2020']

        if self.geoid_fp is not None:
            if self.convert_stn_heights is True:
                lines.append(f'"{str(self.dna_geoid)}" -n "{self.filename}" -g "{str(self.geoid_fp)}" --convert-stn-hts')
            else:
                lines.append(f'"{str(self.dna_geoid)}" -n "{self.filename}" -g "{str(self.geoid_fp)}"')
        else:
            pass
            # warnings.showwarning('No geoid file is set')

        if self.multi_thread is True:
            mt = '--multi-thread'
            lines.append(f'"{str(self.dna_segment)}" -n "{self.filename}"')
            self.adj_type = '.phased-mt.adj'
        else:
            mt = ''
            self.adj_type = '.simult.adj'

        lines.extend([
            f'"{str(self.dna_adjust)}" "{self.filename}" {self.output_type} '
            f'--dms-msr-format {str(self.dms_msr_format)} --stn-coord-types {self.stn_coord_types} --stn-corrections '
            f'--max-iterations {self.max_iterations} --iteration-threshold {self.iter_threshold} {mt}'])
        return lines

    def write_execution_cmd_to_file(self):
        self.cmd_output = Path(self.output_dir, self.filename + self.ext)
        with open(self.cmd_output, 'w') as open_txt:
            for line in self.execution_lines:
                open_txt.write(line + '\n')

    def execute_cmd(self):
        if self.cmd_output is not None:
            if self.cmd_output.exists():
                subprocess.call([self.cmd_output], cwd=self.output_dir)
                self.set_results()

    def run_dna_via_subprocesses(self, msr_locations, stn_locations):
        sub_list = [str(self.dna_import), '-n', self.filename]
        if isinstance(stn_locations, list):
            for item in stn_locations:
                sub_list.append(str(item))
        else:
            sub_list.append(str(stn_locations))
        if isinstance(msr_locations, list):
            for item in msr_locations:
                sub_list.append(str(item))
        else:
            sub_list.append(str(msr_locations))
        sub_list += ['-r', 'GDA2020']
        subprocess.call(sub_list, cwd=self.output_dir)
        if self.geoid_fp is not None:
            if self.geoid_fp.exists():
                if self.convert_stn_heights is True:
                    subprocess.call([str(self.dna_geoid), '-n', self.filename, '-g',
                                     str(self.geoid_fp), '--convert-stn-hts'], cwd=self.output_dir)
                else:
                    subprocess.call([str(self.dna_geoid), '-n', self.filename, '-g',
                                     str(self.geoid_fp)], cwd=self.output_dir)
        else:
            pass
            # warnings.showwarning('No geoid file is set')

        adj_list = [
            self.dna_adjust, self.filename, self.output_type,
            '--dms-msr-format', self.dms_msr_format, '--stn-coord-types', self.stn_coord_types, '--stn-corrections',
            '--max-iterations', self.max_iterations, '--iteration-threshold', self.iter_threshold, '--multi-thread']
        adj_list = [str(i) for i in adj_list]
        if self.multi_thread is True:
            subprocess.call([str(self.dna_segment), '-n', self.filename], cwd=self.output_dir)
            subprocess.call(adj_list, cwd=self.output_dir)
            self.adj_type = '.phased-mt.adj'
        else:
            subprocess.call(adj_list[:-1], cwd=self.output_dir)
            self.adj_type = '.simult.adj'

        results = self.set_results()
        return results

    def set_results(self):
        results = Path(str(self.output_dir), self.filename + self.adj_type)
        if results.exists is False:
            results = None
            # warnings.showwarning("No results file, adjustment hasn't worked for some reason")
        self.results_file = results
        return results

    def set_geoid_location(self, geoid_fp):
        if geoid_fp.exists() is False:
            geoid_fp = Path(self.dna_dir, 'geoid_file', 'AUSGeoid2020_20170908.gsb')
            if geoid_fp.exists() is False:
                pass
                # warnings.showwarning('Could not find geooid file')
            else:
                geoid_fp = None
        return geoid_fp

    def set_run_info(self):
        if self.system_type.lower() == 'windows':
            self.ext = '.bat'
            self.sep = '&'
            self.suffix = '.exe'
            # self.directory = 'windows1064'
        elif self.system_type.lower() == 'darwin':
            self.ext = '.sh'
            self.prefix = 'dna'
            # self.directory = 'darwin'
        else:
            self.ext = '.sh'
            self.prefix = 'dna'
            # self.directory = 'linux'


