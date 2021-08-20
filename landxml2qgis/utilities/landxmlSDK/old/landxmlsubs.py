#!/usr/bin/env python

#
# Generated Wed Oct 28 10:35:04 2020 by generateDS.py version 2.36.2.
# Python 3.8.3 (default, Jul  2 2020, 16:21:59)  [GCC 7.3.0]
#
# Command line options:
#   ('-o', 'landxml.py')
#   ('-s', 'landxmlsubs.py')
#
# Command line arguments:
#   xml-gov-au-vic-icsm-eplan-cif-protocol-1.10.xsd
#
# Command line:
#   /home/anto/Downloads/generateDS-2.36.2/generateDS.py -o "landxml.py" -s "landxmlsubs.py" xml-gov-au-vic-icsm-eplan-cif-protocol-1.10.xsd
#
# Current working directory (os.getcwd()):
#   LandXMLSDK
#

import os
import sys
from lxml import etree as etree_

from landxmlsdk import landxml as supermod


def parsexml_(infile, parser=None, **kwargs):
    if parser is None:
        # Use the lxml ElementTree compatible parser so that, e.g.,
        #   we ignore comments.
        parser = etree_.ETCompatXMLParser()
    try:
        if isinstance(infile, os.PathLike):
            infile = os.path.join(infile)
    except AttributeError:
        pass
    doc = etree_.parse(infile, parser=parser, **kwargs)
    return doc

def parsexmlstring_(instring, parser=None, **kwargs):
    if parser is None:
        # Use the lxml ElementTree compatible parser so that, e.g.,
        #   we ignore comments.
        try:
            parser = etree_.ETCompatXMLParser()
        except AttributeError:
            # fallback to xml.etree
            parser = etree_.XMLParser()
    element = etree_.fromstring(instring, parser=parser, **kwargs)
    return element

#
# Globals
#

ExternalEncoding = ''
SaveElementTreeNode = True

#
# Data representation classes
#


class LandXMLSub(supermod.LandXML):
    def __init__(self, date=None, time=None, version=None, Units=None, CoordinateSystem=None, Application=None, CgPoints=None, Monuments=None, Parcels=None, PlanFeatures=None, Survey=None, FeatureDictionary=None, **kwargs_):
        super(LandXMLSub, self).__init__(date, time, version, Units, CoordinateSystem, Application, CgPoints, Monuments, Parcels, PlanFeatures, Survey, FeatureDictionary,  **kwargs_)
supermod.LandXML.subclass = LandXMLSub
# end class LandXMLSub


class ParcelTypeSub(supermod.ParcelType):
    def __init__(self, name=None, oID=None, area=None, desc=None, owner=None, parcelType=None, state=None, class_=None, useOfParcel=None, parcelFormat=None, Center=None, CoordGeom=None, Parcels=None, Title=None, LocationAddress=None, **kwargs_):
        super(ParcelTypeSub, self).__init__(name, oID, area, desc, owner, parcelType, state, class_, useOfParcel, parcelFormat, Center, CoordGeom, Parcels, Title, LocationAddress,  **kwargs_)
supermod.ParcelType.subclass = ParcelTypeSub
# end class ParcelTypeSub


class AllocationsParcelsTypeSub(supermod.AllocationsParcelsType):
    def __init__(self, desc=None, name=None, state=None, Parcel=None, **kwargs_):
        super(AllocationsParcelsTypeSub, self).__init__(desc, name, state, Parcel,  **kwargs_)
supermod.AllocationsParcelsType.subclass = AllocationsParcelsTypeSub
# end class AllocationsParcelsTypeSub


class AllocationsParcelTypeSub(supermod.AllocationsParcelType):
    def __init__(self, name=None, pclRef=None, lotEntitlements=None, liabilityApportionment=None, **kwargs_):
        super(AllocationsParcelTypeSub, self).__init__(name, pclRef, lotEntitlements, liabilityApportionment,  **kwargs_)
supermod.AllocationsParcelType.subclass = AllocationsParcelTypeSub
# end class AllocationsParcelTypeSub


class PntRefPointTypeSub(supermod.PntRefPointType):
    def __init__(self, pntRef=None, valueOf_=None, mixedclass_=None, content_=None, extensiontype_=None, **kwargs_):
        super(PntRefPointTypeSub, self).__init__(pntRef, valueOf_, mixedclass_, content_, extensiontype_,  **kwargs_)
supermod.PntRefPointType.subclass = PntRefPointTypeSub
# end class PntRefPointTypeSub


class PointTypeSub(supermod.PointType):
    def __init__(self, name=None, desc=None, code=None, state=None, pntRef=None, latitude=None, longitude=None, valueOf_=None, mixedclass_=None, content_=None, extensiontype_=None, **kwargs_):
        super(PointTypeSub, self).__init__(name, desc, code, state, pntRef, latitude, longitude, valueOf_, mixedclass_, content_, extensiontype_,  **kwargs_)
supermod.PointType.subclass = PointTypeSub
# end class PointTypeSub


class PointType3dReqSub(supermod.PointType3dReq):
    def __init__(self, name=None, desc=None, code=None, state=None, valueOf_=None, **kwargs_):
        super(PointType3dReqSub, self).__init__(name, desc, code, state, valueOf_,  **kwargs_)
supermod.PointType3dReq.subclass = PointType3dReqSub
# end class PointType3dReqSub


class CgPointsSub(supermod.CgPoints):
    def __init__(self, desc=None, name=None, CgPoint=None, **kwargs_):
        super(CgPointsSub, self).__init__(desc, name, CgPoint,  **kwargs_)
supermod.CgPoints.subclass = CgPointsSub
# end class CgPointsSub


class CgPointSub(supermod.CgPoint):
    def __init__(self, name=None, desc=None, code=None, state=None, pntRef=None, latitude=None, longitude=None, oID=None, pntSurv=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(CgPointSub, self).__init__(name, desc, code, state, pntRef, latitude, longitude, oID, pntSurv, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.CgPoint.subclass = CgPointSub
# end class CgPointSub


class FeatureDictionarySub(supermod.FeatureDictionary):
    def __init__(self, name=None, version=None, **kwargs_):
        super(FeatureDictionarySub, self).__init__(name, version,  **kwargs_)
supermod.FeatureDictionary.subclass = FeatureDictionarySub
# end class FeatureDictionarySub


class PntList2DSub(supermod.PntList2D):
    def __init__(self, valueOf_=None, **kwargs_):
        super(PntList2DSub, self).__init__( **kwargs_)
supermod.PntList2D.subclass = PntList2DSub
# end class PntList2DSub


class PntList3DSub(supermod.PntList3D):
    def __init__(self, valueOf_=None, **kwargs_):
        super(PntList3DSub, self).__init__( **kwargs_)
supermod.PntList3D.subclass = PntList3DSub
# end class PntList3DSub


class IrregularLineSub(supermod.IrregularLine):
    def __init__(self, desc=None, source=None, Start=None, End=None, PntList2D=None, PntList3D=None, **kwargs_):
        super(IrregularLineSub, self).__init__(desc, source, Start, End, PntList2D, PntList3D,  **kwargs_)
supermod.IrregularLine.subclass = IrregularLineSub
# end class IrregularLineSub


class CurveSub(supermod.Curve):
    def __init__(self, desc=None, rot=None, radius=None, Start=None, Center=None, End=None, **kwargs_):
        super(CurveSub, self).__init__(desc, rot, radius, Start, Center, End,  **kwargs_)
supermod.Curve.subclass = CurveSub
# end class CurveSub


class CoordGeomSub(supermod.CoordGeom):
    def __init__(self, name=None, Line=None, IrregularLine=None, Curve=None, **kwargs_):
        super(CoordGeomSub, self).__init__(name, Line, IrregularLine, Curve,  **kwargs_)
supermod.CoordGeom.subclass = CoordGeomSub
# end class CoordGeomSub


class LineSub(supermod.Line):
    def __init__(self, desc=None, Start=None, End=None, **kwargs_):
        super(LineSub, self).__init__(desc, Start, End,  **kwargs_)
supermod.Line.subclass = LineSub
# end class LineSub


class UnitsSub(supermod.Units):
    def __init__(self, Metric=None, **kwargs_):
        super(UnitsSub, self).__init__(Metric,  **kwargs_)
supermod.Units.subclass = UnitsSub
# end class UnitsSub


class MetricSub(supermod.Metric):
    def __init__(self, areaUnit=None, linearUnit=None, volumeUnit=None, temperatureUnit=None, pressureUnit=None, angularUnit=None, directionUnit=None, **kwargs_):
        super(MetricSub, self).__init__(areaUnit, linearUnit, volumeUnit, temperatureUnit, pressureUnit, angularUnit, directionUnit,  **kwargs_)
supermod.Metric.subclass = MetricSub
# end class MetricSub


class CoordinateSystemSub(supermod.CoordinateSystem):
    def __init__(self, desc=None, datum=None, horizontalDatum=None, **kwargs_):
        super(CoordinateSystemSub, self).__init__(desc, datum, horizontalDatum,  **kwargs_)
supermod.CoordinateSystem.subclass = CoordinateSystemSub
# end class CoordinateSystemSub


class ApplicationSub(supermod.Application):
    def __init__(self, name=None, version=None, Author=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(ApplicationSub, self).__init__(name, version, Author, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.Application.subclass = ApplicationSub
# end class ApplicationSub


class AuthorSub(supermod.Author):
    def __init__(self, createdBy=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(AuthorSub, self).__init__(createdBy, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.Author.subclass = AuthorSub
# end class AuthorSub


class SurveySub(supermod.Survey):
    def __init__(self, SurveyHeader=None, InstrumentSetup=None, ObservationGroup=None, **kwargs_):
        super(SurveySub, self).__init__(SurveyHeader, InstrumentSetup, ObservationGroup,  **kwargs_)
supermod.Survey.subclass = SurveySub
# end class SurveySub


class SurveyHeaderSub(supermod.SurveyHeader):
    def __init__(self, name=None, surveyorFirm=None, surveyorReference=None, type_=None, jurisdiction=None, surveyFormat=None, Annotation=None, AdministrativeArea=None, AdministrativeDate=None, Personnel=None, FieldNote=None, PurposeOfSurvey=None, HeadOfPower=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(SurveyHeaderSub, self).__init__(name, surveyorFirm, surveyorReference, type_, jurisdiction, surveyFormat, Annotation, AdministrativeArea, AdministrativeDate, Personnel, FieldNote, PurposeOfSurvey, HeadOfPower, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.SurveyHeader.subclass = SurveyHeaderSub
# end class SurveyHeaderSub


class HeadOfPowerSub(supermod.HeadOfPower):
    def __init__(self, name=None, **kwargs_):
        super(HeadOfPowerSub, self).__init__(name,  **kwargs_)
supermod.HeadOfPower.subclass = HeadOfPowerSub
# end class HeadOfPowerSub


class AdministrativeAreaSub(supermod.AdministrativeArea):
    def __init__(self, adminAreaType=None, adminAreaName=None, adminAreaCode=None, pclRef=None, **kwargs_):
        super(AdministrativeAreaSub, self).__init__(adminAreaType, adminAreaName, adminAreaCode, pclRef,  **kwargs_)
supermod.AdministrativeArea.subclass = AdministrativeAreaSub
# end class AdministrativeAreaSub


class AdministrativeDateSub(supermod.AdministrativeDate):
    def __init__(self, adminDateType=None, adminDate=None, **kwargs_):
        super(AdministrativeDateSub, self).__init__(adminDateType, adminDate,  **kwargs_)
supermod.AdministrativeDate.subclass = AdministrativeDateSub
# end class AdministrativeDateSub


class AnnotationSub(supermod.Annotation):
    def __init__(self, type_=None, name=None, desc=None, pclRef=None, **kwargs_):
        super(AnnotationSub, self).__init__(type_, name, desc, pclRef,  **kwargs_)
supermod.Annotation.subclass = AnnotationSub
# end class AnnotationSub


class PurposeOfSurveySub(supermod.PurposeOfSurvey):
    def __init__(self, name=None, **kwargs_):
        super(PurposeOfSurveySub, self).__init__(name,  **kwargs_)
supermod.PurposeOfSurvey.subclass = PurposeOfSurveySub
# end class PurposeOfSurveySub


class AmendmentSub(supermod.Amendment):
    def __init__(self, dealingNumber=None, amendmentDate=None, comments=None, **kwargs_):
        super(AmendmentSub, self).__init__(dealingNumber, amendmentDate, comments,  **kwargs_)
supermod.Amendment.subclass = AmendmentSub
# end class AmendmentSub


class PersonnelSub(supermod.Personnel):
    def __init__(self, name=None, role=None, regType=None, regNumber=None, **kwargs_):
        super(PersonnelSub, self).__init__(name, role, regType, regNumber,  **kwargs_)
supermod.Personnel.subclass = PersonnelSub
# end class PersonnelSub


class FieldNoteSub(supermod.FieldNote):
    def __init__(self, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(FieldNoteSub, self).__init__(valueOf_, mixedclass_, content_,  **kwargs_)
supermod.FieldNote.subclass = FieldNoteSub
# end class FieldNoteSub


class InstrumentSetupSub(supermod.InstrumentSetup):
    def __init__(self, id=None, stationName=None, instrumentHeight=None, InstrumentPoint=None, **kwargs_):
        super(InstrumentSetupSub, self).__init__(id, stationName, instrumentHeight, InstrumentPoint,  **kwargs_)
supermod.InstrumentSetup.subclass = InstrumentSetupSub
# end class InstrumentSetupSub


class ObservationGroupSub(supermod.ObservationGroup):
    def __init__(self, id=None, ReducedObservation=None, RedHorizontalPosition=None, ReducedArcObservation=None, RedVerticalObservation=None, **kwargs_):
        super(ObservationGroupSub, self).__init__(id, ReducedObservation, RedHorizontalPosition, ReducedArcObservation, RedVerticalObservation,  **kwargs_)
supermod.ObservationGroup.subclass = ObservationGroupSub
# end class ObservationGroupSub


class ReducedObservationSub(supermod.ReducedObservation):
    def __init__(self, name=None, desc=None, purpose=None, setupID=None, targetSetupID=None, azimuth=None, horizDistance=None, equipmentUsed=None, azimuthAccuracy=None, distanceAccuracy=None, angleAccuracy=None, distanceType=None, azimuthType=None, adoptedAzimuthSurvey=None, adoptedDistanceSurvey=None, azimuthAdoptionFactor=None, distanceAdoptionFactor=None, FieldNote=None, **kwargs_):
        super(ReducedObservationSub, self).__init__(name, desc, purpose, setupID, targetSetupID, azimuth, horizDistance, equipmentUsed, azimuthAccuracy, distanceAccuracy, angleAccuracy, distanceType, azimuthType, adoptedAzimuthSurvey, adoptedDistanceSurvey, azimuthAdoptionFactor, distanceAdoptionFactor, FieldNote,  **kwargs_)
supermod.ReducedObservation.subclass = ReducedObservationSub
# end class ReducedObservationSub


class ReducedArcObservationSub(supermod.ReducedArcObservation):
    def __init__(self, name=None, desc=None, purpose=None, setupID=None, targetSetupID=None, chordAzimuth=None, radius=None, length=None, rot=None, equipmentUsed=None, arcAzimuthAccuracy=None, arcLengthAccuracy=None, arcAngleAccuracy=None, arcType=None, adoptedSurvey=None, azimuthAdoptionFactor=None, lengthAdoptionFactor=None, FieldNote=None, **kwargs_):
        super(ReducedArcObservationSub, self).__init__(name, desc, purpose, setupID, targetSetupID, chordAzimuth, radius, length, rot, equipmentUsed, arcAzimuthAccuracy, arcLengthAccuracy, arcAngleAccuracy, arcType, adoptedSurvey, azimuthAdoptionFactor, lengthAdoptionFactor, FieldNote,  **kwargs_)
supermod.ReducedArcObservation.subclass = ReducedArcObservationSub
# end class ReducedArcObservationSub


class RedHorizontalPositionSub(supermod.RedHorizontalPosition):
    def __init__(self, desc=None, name=None, oID=None, setupID=None, date=None, horizontalDatum=None, horizontalAdjustment=None, latitude=None, longitude=None, horizontalFix=None, currencyDate=None, order=None, positionalUncertainity=None, FieldNote=None, **kwargs_):
        super(RedHorizontalPositionSub, self).__init__(desc, name, oID, setupID, date, horizontalDatum, horizontalAdjustment, latitude, longitude, horizontalFix, currencyDate, order, positionalUncertainity, FieldNote,  **kwargs_)
supermod.RedHorizontalPosition.subclass = RedHorizontalPositionSub
# end class RedHorizontalPositionSub


class RedVerticalObservationSub(supermod.RedVerticalObservation):
    def __init__(self, desc=None, name=None, oID=None, setupID=None, date=None, height=None, verticalAdjustment=None, verticalFix=None, geosphoid=None, gsDatum=None, gsModel=None, verticalDatum=None, order=None, positionalUncertainity=None, FieldNote=None, **kwargs_):
        super(RedVerticalObservationSub, self).__init__(desc, name, oID, setupID, date, height, verticalAdjustment, verticalFix, geosphoid, gsDatum, gsModel, verticalDatum, order, positionalUncertainity, FieldNote,  **kwargs_)
supermod.RedVerticalObservation.subclass = RedVerticalObservationSub
# end class RedVerticalObservationSub


class MonumentsSub(supermod.Monuments):
    def __init__(self, Monument=None, **kwargs_):
        super(MonumentsSub, self).__init__(Monument,  **kwargs_)
supermod.Monuments.subclass = MonumentsSub
# end class MonumentsSub


class MonumentSub(supermod.Monument):
    def __init__(self, name=None, pntRef=None, desc=None, state=None, condition=None, type_=None, originSurvey=None, **kwargs_):
        super(MonumentSub, self).__init__(name, pntRef, desc, state, condition, type_, originSurvey,  **kwargs_)
supermod.Monument.subclass = MonumentSub
# end class MonumentSub


class ParcelsSub(supermod.Parcels):
    def __init__(self, Parcel=None, **kwargs_):
        super(ParcelsSub, self).__init__(Parcel,  **kwargs_)
supermod.Parcels.subclass = ParcelsSub
# end class ParcelsSub


class TitleSub(supermod.Title):
    def __init__(self, name=None, titleType=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(TitleSub, self).__init__(name, titleType, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.Title.subclass = TitleSub
# end class TitleSub


class LocationAddressSub(supermod.LocationAddress):
    def __init__(self, addressType=None, flatType=None, flatNumber=None, floorLevelType=None, floorLevelNumber=None, numberFirst=None, numberSuffixFirst=None, numberLast=None, numberSuffixLast=None, ComplexName=None, RoadName=None, AdministrativeArea=None, AddressPoint=None, **kwargs_):
        super(LocationAddressSub, self).__init__(addressType, flatType, flatNumber, floorLevelType, floorLevelNumber, numberFirst, numberSuffixFirst, numberLast, numberSuffixLast, ComplexName, RoadName, AdministrativeArea, AddressPoint,  **kwargs_)
supermod.LocationAddress.subclass = LocationAddressSub
# end class LocationAddressSub


class ComplexNameSub(supermod.ComplexName):
    def __init__(self, desc=None, priority=None, **kwargs_):
        super(ComplexNameSub, self).__init__(desc, priority,  **kwargs_)
supermod.ComplexName.subclass = ComplexNameSub
# end class ComplexNameSub


class RoadNameSub(supermod.RoadName):
    def __init__(self, roadNameType=None, roadName=None, roadNameSuffix=None, roadType=None, pclRef=None, **kwargs_):
        super(RoadNameSub, self).__init__(roadNameType, roadName, roadNameSuffix, roadType, pclRef,  **kwargs_)
supermod.RoadName.subclass = RoadNameSub
# end class RoadNameSub


class AddressPointSub(supermod.AddressPoint):
    def __init__(self, pntRef=None, addressPointType=None, valueOf_=None, mixedclass_=None, content_=None, **kwargs_):
        super(AddressPointSub, self).__init__(pntRef, addressPointType, valueOf_, mixedclass_, content_,  **kwargs_)
supermod.AddressPoint.subclass = AddressPointSub
# end class AddressPointSub


class PlanFeaturesSub(supermod.PlanFeatures):
    def __init__(self, name=None, desc=None, PlanFeature=None, **kwargs_):
        super(PlanFeaturesSub, self).__init__(name, desc, PlanFeature,  **kwargs_)
supermod.PlanFeatures.subclass = PlanFeaturesSub
# end class PlanFeaturesSub


class PlanFeatureSub(supermod.PlanFeature):
    def __init__(self, desc=None, name=None, CoordGeom=None, **kwargs_):
        super(PlanFeatureSub, self).__init__(desc, name, CoordGeom,  **kwargs_)
supermod.PlanFeature.subclass = PlanFeatureSub
# end class PlanFeatureSub


def get_root_tag(node):
    tag = supermod.Tag_pattern_.match(node.tag).groups()[-1]
    rootClass = None
    rootClass = supermod.GDSClassesMapping.get(tag)
    if rootClass is None and hasattr(supermod, tag):
        rootClass = getattr(supermod, tag)
    return tag, rootClass


def parse(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'LandXML'
        rootClass = supermod.LandXML
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    if not SaveElementTreeNode:
        doc = None
        rootNode = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='xmlns:vic="http://www.landxml.org/schema/LandXML-1.2"',
            pretty_print=True)
    return rootObj


def parseEtree(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'LandXML'
        rootClass = supermod.LandXML
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    mapping = {}
    rootElement = rootObj.to_etree(None, name_=rootTag, mapping_=mapping)
    reverse_mapping = rootObj.gds_reverse_node_mapping(mapping)
    # Enable Python to collect the space used by the DOM.
    if not SaveElementTreeNode:
        doc = None
        rootNode = None
    if not silence:
        content = etree_.tostring(
            rootElement, pretty_print=True,
            xml_declaration=True, encoding="utf-8")
        sys.stdout.write(content)
        sys.stdout.write('\n')
    return rootObj, rootElement, mapping, reverse_mapping


def parseString(inString, silence=False):
    if sys.version_info.major == 2:
        pass
    else:
        pass
    parser = None
    rootNode= parsexmlstring_(inString, parser)
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'LandXML'
        rootClass = supermod.LandXML
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    if not SaveElementTreeNode:
        rootNode = None
    if not silence:
        sys.stdout.write('<?xml version="1.0" ?>\n')
        rootObj.export(
            sys.stdout, 0, name_=rootTag,
            namespacedef_='xmlns:vic="http://www.landxml.org/schema/LandXML-1.2"')
    return rootObj


def parseLiteral(inFilename, silence=False):
    parser = None
    doc = parsexml_(inFilename, parser)
    rootNode = doc.getroot()
    rootTag, rootClass = get_root_tag(rootNode)
    if rootClass is None:
        rootTag = 'LandXML'
        rootClass = supermod.LandXML
    rootObj = rootClass.factory()
    rootObj.build(rootNode)
    # Enable Python to collect the space used by the DOM.
    if not SaveElementTreeNode:
        doc = None
        rootNode = None
    if not silence:
        sys.stdout.write('#from ??? import *\n\n')
        sys.stdout.write('import ??? as model_\n\n')
        sys.stdout.write('rootObj = model_.rootClass(\n')
        rootObj.exportLiteral(sys.stdout, 0, name_=rootTag)
        sys.stdout.write(')\n')
    return rootObj


USAGE_TEXT = """
Usage: python ???.py <infilename>
"""


def usage():
    print(USAGE_TEXT)
    sys.exit(1)


def main():
    args = sys.argv[1:]
    if len(args) != 1:
        usage()
    infilename = args[0]
    parse(infilename)


if __name__ == '__main__':
    #import pdb; pdb.set_trace()
    main()
