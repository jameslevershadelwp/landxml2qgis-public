from utilities.landxmlSDK.landxml.landxml import SurveyHeader, CoordinateSystem
from utilities.landxmlSDK.dcmgeometry.polygons import PolygonGeom
import shapely.ops as so


class Admin:
    def __init__(self, survey_header=None, polygons=None, coordinate_system=None):
        self.lga = None
        self.lga_code = None
        self.parish = None
        self.parish_code = None
        self.date_of_survey = None
        self.township = None
        self.township_code = None
        self.surveyor = None
        self.surveyor_firm = None
        self.survey_type = None
        self.purpose = None
        self.surveying_act = None
        self.surveyor_role = None
        self.surveyor_reg_type = None
        self.surveyor_reg_no = None
        self.crown_allotment = None
        self.crown_portion = None
        self.crown_section = None
        self.plan_number = None
        self.registration_date = None
        self.jurisdiction = None
        self.survey_land_type = None
        self.surveyor_reference = None
        self.plan_notations = []
        self.crs = None
        self.set_crs(polygons)
        self.datum = None
        self.horizontal_datum = None
        self.datum_desc = None

        if isinstance(survey_header, SurveyHeader):
            self.jurisdiction = survey_header.jurisdiction
            self.survey_land_type = survey_header.surveyFormat
            self.surveyor_firm = survey_header.surveyorFirm
            self.surveyor_reference = survey_header.surveyorReference
            self.survey_type = survey_header.type_
            self.surveying_act = ', '.join([i.name for i in survey_header.HeadOfPower])
            self.purpose = ', '.join([i.name for i in survey_header.PurposeOfSurvey])
            self.set_administrative_areas(survey_header, polygons)
            self.set_personnel(survey_header)
            self.set_adminstrative_dates(survey_header)
            self.set_annotations(survey_header, polygons)
            self.plan_number = survey_header.name

        if isinstance(coordinate_system, CoordinateSystem):
            self.datum = CoordinateSystem.get_datum()
            self.horizontal_datum = CoordinateSystem.get_horizontalDatum()
            self.datum_desc = CoordinateSystem.get_desc()
        self.geometry = self.set_geometry(polygons)

    def set_crs(self, polygons, crs=None):
        self.crs = crs
        if crs is None:
            if polygons is not None:
                for v in polygons.values():
                    self.crs = v.crs
                    break

    def set_geometry(self, polygons):
        if polygons is not None:
            geom_list = [polygon.geometry for polygon in polygons.values() if polygon]
            return so.unary_union(geom_list)

    def set_adminstrative_dates(self, survey_header):
        for item in survey_header.AdministrativeDate:
            if item.adminDateType == 'Date of Registration':
                self.registration_date = item.adminDate
            elif item.adminDateType == 'Date of Survey':
                self.date_of_survey = item.adminDate

    def set_annotations(self, survey_header, polygons=None):
        for item in survey_header.Annotation:
            if item.type_ == 'Crown Allotment':
                self.crown_allotment = item.desc
            elif item.type_ == 'Crown Portion':
                self.crown_portion = item.desc
            elif item.type_ == 'Crown Section':
                self.crown_section = item.desc
            else:
                self.plan_notations.append(item.type_ + '; ' + item.desc)

            if polygons is not None:
                if item.pclRef is not None:
                    polygon = polygons.get(item.pclRef)
                    if polygon is not None:
                        polygon.polygon_notations.append(item.type_ + '; ' + item.desc)

    def set_personnel(self, survey_header):
        names = []
        roles = []
        reg_types = []
        reg_numbers = []
        for i in survey_header.Personnel:
            names.append(i.name)
            roles.append(i.role)
            reg_types.append(i.regType)
            reg_numbers.append(i.regNumber)
        self.surveyor = ', '.join(names)
        self.surveyor_role = ', '.join(roles)
        self.surveyor_reg_type = ', '.join(reg_types)
        self.surveyor_reg_no = ', '.join(reg_numbers)

    def set_administrative_areas(self, survey_header, polygons=None):
        for item in survey_header.AdministrativeArea:
            if item.adminAreaType == 'LGA':
                self.lga = item.adminAreaName
                self.lga_code = item.adminAreaCode
            elif item.adminAreaType == 'Parish':
                self.parish = item.adminAreaName
                self.parish_code = item.adminAreaCode
            elif item.adminAreaType == 'Township':
                self.township = item.adminAreaName
                self.township_code = item.adminAreaCode

            if polygons is not None:
                if item.pclRef is not None:
                    polygon = polygons.get(item.pclRef)
                    if polygon is not None:
                        polygon.polygon_notations.append(str(item.adminAreaName) + '; ', str(item.adminAreaCode))