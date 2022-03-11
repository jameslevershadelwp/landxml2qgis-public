<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.18.1-Zürich" labelsEnabled="1" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" styleCategories="AllStyleCategories" readOnly="0" minScale="100000000" simplifyAlgorithm="0" simplifyLocal="1" simplifyMaxScale="1" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal accumulate="0" durationField="" startField="" durationUnit="min" startExpression="" mode="0" endExpression="" fixedDuration="0" enabled="0" endField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="singleSymbol" enableorderby="0" symbollevels="0" forceraster="0">
    <symbols>
      <symbol clip_to_extent="1" alpha="1" type="fill" force_rhr="0" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" pass="0" locked="0" enabled="1">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="231,231,231,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="82,82,82,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="231,231,231,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="82,82,82,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{3279ac09-c72b-48dc-92ec-f5f9f4200926}">
      <rule active="0" key="{ccc57b32-4e61-4434-ab09-76ae7fca3474}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName=" &quot;name&quot; +  '\n'   +  &quot;stated_area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="152,125,183,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="152,125,183,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="1" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="0" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="0" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter=" &quot;desc&quot;  is not NULL" key="{01028a2d-eae7-4512-99de-79f837cce69c}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName="&quot;name&quot; +  '\n'   +  &quot;stated_area&quot; + '\n'  +  &quot;desc&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="232,113,141,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="232,113,141,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="0" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="1" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;desc&quot; is NULL" key="{3e1b9063-bf06-4ceb-8a64-8da37549d952}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName=" &quot;name&quot; +  '\n'   +  &quot;stated_area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="141,90,153,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="141,90,153,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="1" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="2" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="1" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;stated_area&quot; is NULL and &quot;desc&quot; is not NULL" key="{d739a721-604f-49c9-b374-07ca824bdc73}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName="&quot;name&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="213,180,60,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="0" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="0" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;stated_area&quot; is NULL and &quot;desc&quot; is NULL" key="{26f5bfe9-f9ca-462d-9797-5d1071ad6a19}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName="name+  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="164,113,88,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="164,113,88,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="0" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="0" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="0" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{1fcbc130-554e-420c-aaca-1b561c6d7b67}">
        <settings calloutType="simple">
          <text-style fontWeight="50" fontLetterSpacing="0" textOrientation="horizontal" allowHtml="0" fontKerning="1" fontSize="10" previewBkgrdColor="255,255,255,255" fontUnderline="0" fontStrikeout="0" capitalization="0" fieldName="" fontWordSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" fontSizeUnit="Point" isExpression="1" namedStyle="Regular" blendMode="0" fontItalic="0" textColor="0,0,0,255" textOpacity="1" useSubstitutions="0" fontFamily=".AppleSystemUIFont">
            <text-buffer bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferBlendMode="0" bufferNoFill="1" bufferOpacity="1"/>
            <text-mask maskEnabled="0" maskType="0" maskSize="1.5" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBlendMode="0" shapeRadiiY="0" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeRadiiX="0" shapeSizeUnit="MM" shapeType="0" shapeDraw="0" shapeJoinStyle="64" shapeSizeY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeSVGFile="" shapeBorderWidth="0">
              <symbol clip_to_extent="1" alpha="1" type="marker" force_rhr="0" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="114,155,111,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="color" v="114,155,111,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetDist="1" shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format multilineAlign="3" wrapChar="" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" addDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" formatNumbers="0" plussign="0"/>
          <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" repeatDistance="0" repeatDistanceUnits="MM" distUnits="MM" yOffset="0" dist="0" lineAnchorPercent="0.5" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0" layerType="PolygonGeometry" rotationAngle="0" centroidWhole="0" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" xOffset="0" geometryGenerator="" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" distMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" lineAnchorType="0" geometryGeneratorType="PointGeometry" offsetType="0" overrunDistanceUnit="MM" priority="5" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="0" preserveRotation="1" quadOffset="4"/>
          <rendering upsidedownLabels="0" limitNumLabels="0" minFeatureSize="0" scaleVisibility="0" maxNumLabels="2000" mergeLines="0" fontMinPixelSize="3" obstacleType="1" drawLabels="1" obstacleFactor="1" scaleMax="0" zIndex="0" scaleMin="0" fontLimitPixelSize="0" labelPerPart="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"@name"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory width="15" showAxis="0" lineSizeType="MM" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" sizeType="MM" minimumSize="0" penAlpha="255" direction="1" maxScaleDenominator="1e+08" spacingUnit="MM" height="15" penColor="#000000" backgroundAlpha="255" opacity="1" labelPlacementMethod="XHeight" scaleBasedVisibility="0" rotationOffset="270" minScaleDenominator="0" penWidth="0" barWidth="5" backgroundColor="#ffffff" sizeScale="3x:0,0,0,0,0,0" spacing="0" enabled="0" spacingUnitScale="3x:0,0,0,0,0,0" diagramOrientation="Up">
      <fontProperties style="" description=".SF NS Text,13,-1,5,50,0,0,0,0,0"/>
      <attribute label="" field="" color="#000000"/>
      <axisSymbol>
        <symbol clip_to_extent="1" alpha="1" type="line" force_rhr="0" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" pass="0" locked="0" enabled="1">
            <Option type="Map">
              <Option type="QString" value="0" name="align_dash_pattern"/>
              <Option type="QString" value="square" name="capstyle"/>
              <Option type="QString" value="5;2" name="customdash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
              <Option type="QString" value="MM" name="customdash_unit"/>
              <Option type="QString" value="0" name="dash_pattern_offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
              <Option type="QString" value="0" name="draw_inside_polygon"/>
              <Option type="QString" value="bevel" name="joinstyle"/>
              <Option type="QString" value="35,35,35,255" name="line_color"/>
              <Option type="QString" value="solid" name="line_style"/>
              <Option type="QString" value="0.26" name="line_width"/>
              <Option type="QString" value="MM" name="line_width_unit"/>
              <Option type="QString" value="0" name="offset"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
              <Option type="QString" value="MM" name="offset_unit"/>
              <Option type="QString" value="0" name="ring_filter"/>
              <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
              <Option type="QString" value="0" name="use_custom_dash"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
            </Option>
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" placement="1" zIndex="0" linePlacementFlags="18" priority="0" dist="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="key">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="ob_name">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="lga">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="lga_code">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="parish">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="parish_code">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="date_of_survey">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="township">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="township_code">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor_firm">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="survey_type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="purpose">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveying_act">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor_role">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor_reg_type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor_reg_no">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="crown_allotment">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="crown_portion">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="crown_section">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="plan_number">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="registration_date">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="jurisdiction">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="survey_land_type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="surveyor_reference">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="plan_notations">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="crs">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="key" index="0" name=""/>
    <alias field="ob_name" index="1" name=""/>
    <alias field="lga" index="2" name=""/>
    <alias field="lga_code" index="3" name=""/>
    <alias field="parish" index="4" name=""/>
    <alias field="parish_code" index="5" name=""/>
    <alias field="date_of_survey" index="6" name=""/>
    <alias field="township" index="7" name=""/>
    <alias field="township_code" index="8" name=""/>
    <alias field="surveyor" index="9" name=""/>
    <alias field="surveyor_firm" index="10" name=""/>
    <alias field="survey_type" index="11" name=""/>
    <alias field="purpose" index="12" name=""/>
    <alias field="surveying_act" index="13" name=""/>
    <alias field="surveyor_role" index="14" name=""/>
    <alias field="surveyor_reg_type" index="15" name=""/>
    <alias field="surveyor_reg_no" index="16" name=""/>
    <alias field="crown_allotment" index="17" name=""/>
    <alias field="crown_portion" index="18" name=""/>
    <alias field="crown_section" index="19" name=""/>
    <alias field="plan_number" index="20" name=""/>
    <alias field="registration_date" index="21" name=""/>
    <alias field="jurisdiction" index="22" name=""/>
    <alias field="survey_land_type" index="23" name=""/>
    <alias field="surveyor_reference" index="24" name=""/>
    <alias field="plan_notations" index="25" name=""/>
    <alias field="crs" index="26" name=""/>
  </aliases>
  <defaults>
    <default field="key" expression="" applyOnUpdate="0"/>
    <default field="ob_name" expression="" applyOnUpdate="0"/>
    <default field="lga" expression="" applyOnUpdate="0"/>
    <default field="lga_code" expression="" applyOnUpdate="0"/>
    <default field="parish" expression="" applyOnUpdate="0"/>
    <default field="parish_code" expression="" applyOnUpdate="0"/>
    <default field="date_of_survey" expression="" applyOnUpdate="0"/>
    <default field="township" expression="" applyOnUpdate="0"/>
    <default field="township_code" expression="" applyOnUpdate="0"/>
    <default field="surveyor" expression="" applyOnUpdate="0"/>
    <default field="surveyor_firm" expression="" applyOnUpdate="0"/>
    <default field="survey_type" expression="" applyOnUpdate="0"/>
    <default field="purpose" expression="" applyOnUpdate="0"/>
    <default field="surveying_act" expression="" applyOnUpdate="0"/>
    <default field="surveyor_role" expression="" applyOnUpdate="0"/>
    <default field="surveyor_reg_type" expression="" applyOnUpdate="0"/>
    <default field="surveyor_reg_no" expression="" applyOnUpdate="0"/>
    <default field="crown_allotment" expression="" applyOnUpdate="0"/>
    <default field="crown_portion" expression="" applyOnUpdate="0"/>
    <default field="crown_section" expression="" applyOnUpdate="0"/>
    <default field="plan_number" expression="" applyOnUpdate="0"/>
    <default field="registration_date" expression="" applyOnUpdate="0"/>
    <default field="jurisdiction" expression="" applyOnUpdate="0"/>
    <default field="survey_land_type" expression="" applyOnUpdate="0"/>
    <default field="surveyor_reference" expression="" applyOnUpdate="0"/>
    <default field="plan_notations" expression="" applyOnUpdate="0"/>
    <default field="crs" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" field="key" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="ob_name" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="lga" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="lga_code" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="parish" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="parish_code" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="date_of_survey" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="township" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="township_code" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor_firm" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="survey_type" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="purpose" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveying_act" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor_role" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor_reg_type" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor_reg_no" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="crown_allotment" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="crown_portion" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="crown_section" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="plan_number" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="registration_date" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="jurisdiction" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="survey_land_type" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="surveyor_reference" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="plan_notations" unique_strength="0" constraints="0" exp_strength="0"/>
    <constraint notnull_strength="0" field="crs" unique_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="key" exp="" desc=""/>
    <constraint field="ob_name" exp="" desc=""/>
    <constraint field="lga" exp="" desc=""/>
    <constraint field="lga_code" exp="" desc=""/>
    <constraint field="parish" exp="" desc=""/>
    <constraint field="parish_code" exp="" desc=""/>
    <constraint field="date_of_survey" exp="" desc=""/>
    <constraint field="township" exp="" desc=""/>
    <constraint field="township_code" exp="" desc=""/>
    <constraint field="surveyor" exp="" desc=""/>
    <constraint field="surveyor_firm" exp="" desc=""/>
    <constraint field="survey_type" exp="" desc=""/>
    <constraint field="purpose" exp="" desc=""/>
    <constraint field="surveying_act" exp="" desc=""/>
    <constraint field="surveyor_role" exp="" desc=""/>
    <constraint field="surveyor_reg_type" exp="" desc=""/>
    <constraint field="surveyor_reg_no" exp="" desc=""/>
    <constraint field="crown_allotment" exp="" desc=""/>
    <constraint field="crown_portion" exp="" desc=""/>
    <constraint field="crown_section" exp="" desc=""/>
    <constraint field="plan_number" exp="" desc=""/>
    <constraint field="registration_date" exp="" desc=""/>
    <constraint field="jurisdiction" exp="" desc=""/>
    <constraint field="survey_land_type" exp="" desc=""/>
    <constraint field="surveyor_reference" exp="" desc=""/>
    <constraint field="plan_notations" exp="" desc=""/>
    <constraint field="crs" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" width="-1" type="field" name="key"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" width="-1" type="field" name="ob_name"/>
      <column hidden="0" width="-1" type="field" name="crs"/>
      <column hidden="0" width="-1" type="field" name="lga"/>
      <column hidden="0" width="-1" type="field" name="lga_code"/>
      <column hidden="0" width="-1" type="field" name="parish"/>
      <column hidden="0" width="-1" type="field" name="parish_code"/>
      <column hidden="0" width="-1" type="field" name="date_of_survey"/>
      <column hidden="0" width="-1" type="field" name="township"/>
      <column hidden="0" width="-1" type="field" name="township_code"/>
      <column hidden="0" width="-1" type="field" name="surveyor"/>
      <column hidden="0" width="-1" type="field" name="surveyor_firm"/>
      <column hidden="0" width="-1" type="field" name="survey_type"/>
      <column hidden="0" width="-1" type="field" name="purpose"/>
      <column hidden="0" width="-1" type="field" name="surveying_act"/>
      <column hidden="0" width="-1" type="field" name="surveyor_role"/>
      <column hidden="0" width="-1" type="field" name="surveyor_reg_type"/>
      <column hidden="0" width="-1" type="field" name="surveyor_reg_no"/>
      <column hidden="0" width="-1" type="field" name="crown_allotment"/>
      <column hidden="0" width="-1" type="field" name="crown_portion"/>
      <column hidden="0" width="-1" type="field" name="crown_section"/>
      <column hidden="0" width="-1" type="field" name="plan_number"/>
      <column hidden="0" width="-1" type="field" name="registration_date"/>
      <column hidden="0" width="-1" type="field" name="jurisdiction"/>
      <column hidden="0" width="-1" type="field" name="survey_land_type"/>
      <column hidden="0" width="-1" type="field" name="surveyor_reference"/>
      <column hidden="0" width="-1" type="field" name="plan_notations"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="@area"/>
    <field editable="1" name="@class"/>
    <field editable="1" name="@desc"/>
    <field editable="1" name="@name"/>
    <field editable="1" name="@parcelFormat"/>
    <field editable="1" name="@parcelType"/>
    <field editable="1" name="@state"/>
    <field editable="1" name="Center"/>
    <field editable="1" name="CoordGeom"/>
    <field editable="1" name="Parcels"/>
    <field editable="1" name="calc_area"/>
    <field editable="1" name="calculated_area"/>
    <field editable="1" name="centre_point"/>
    <field editable="1" name="closed"/>
    <field editable="1" name="contains_nat_bdy"/>
    <field editable="1" name="crown_allotment"/>
    <field editable="1" name="crown_portion"/>
    <field editable="1" name="crown_section"/>
    <field editable="1" name="crs"/>
    <field editable="1" name="date_of_survey"/>
    <field editable="1" name="desc"/>
    <field editable="1" name="diagram"/>
    <field editable="1" name="easement"/>
    <field editable="1" name="geometry"/>
    <field editable="1" name="has_misclose"/>
    <field editable="1" name="irregular_line"/>
    <field editable="1" name="jurisdiction"/>
    <field editable="1" name="key"/>
    <field editable="1" name="lga"/>
    <field editable="1" name="lga_code"/>
    <field editable="1" name="misclose"/>
    <field editable="1" name="misclose_bearing"/>
    <field editable="1" name="misclose_distance"/>
    <field editable="1" name="misclose_tolerance"/>
    <field editable="1" name="missing_lines"/>
    <field editable="1" name="multipart"/>
    <field editable="1" name="name"/>
    <field editable="1" name="natural_boundary"/>
    <field editable="1" name="ob_name"/>
    <field editable="1" name="parcel_class"/>
    <field editable="1" name="parcel_format"/>
    <field editable="1" name="parcel_state"/>
    <field editable="1" name="parcel_type"/>
    <field editable="1" name="parent"/>
    <field editable="1" name="parish"/>
    <field editable="1" name="parish_code"/>
    <field editable="1" name="part"/>
    <field editable="1" name="plan_notations"/>
    <field editable="1" name="plan_number"/>
    <field editable="1" name="purpose"/>
    <field editable="1" name="registration_date"/>
    <field editable="1" name="stated_area"/>
    <field editable="1" name="sum_of_distances"/>
    <field editable="1" name="survey_land_type"/>
    <field editable="1" name="survey_type"/>
    <field editable="1" name="surveying_act"/>
    <field editable="1" name="surveyor"/>
    <field editable="1" name="surveyor_firm"/>
    <field editable="1" name="surveyor_reference"/>
    <field editable="1" name="surveyor_reg_no"/>
    <field editable="1" name="surveyor_reg_type"/>
    <field editable="1" name="surveyor_role"/>
    <field editable="1" name="township"/>
    <field editable="1" name="township_code"/>
    <field editable="1" name="valid_geom"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="@area"/>
    <field labelOnTop="0" name="@class"/>
    <field labelOnTop="0" name="@desc"/>
    <field labelOnTop="0" name="@name"/>
    <field labelOnTop="0" name="@parcelFormat"/>
    <field labelOnTop="0" name="@parcelType"/>
    <field labelOnTop="0" name="@state"/>
    <field labelOnTop="0" name="Center"/>
    <field labelOnTop="0" name="CoordGeom"/>
    <field labelOnTop="0" name="Parcels"/>
    <field labelOnTop="0" name="calc_area"/>
    <field labelOnTop="0" name="calculated_area"/>
    <field labelOnTop="0" name="centre_point"/>
    <field labelOnTop="0" name="closed"/>
    <field labelOnTop="0" name="contains_nat_bdy"/>
    <field labelOnTop="0" name="crown_allotment"/>
    <field labelOnTop="0" name="crown_portion"/>
    <field labelOnTop="0" name="crown_section"/>
    <field labelOnTop="0" name="crs"/>
    <field labelOnTop="0" name="date_of_survey"/>
    <field labelOnTop="0" name="desc"/>
    <field labelOnTop="0" name="diagram"/>
    <field labelOnTop="0" name="easement"/>
    <field labelOnTop="0" name="geometry"/>
    <field labelOnTop="0" name="has_misclose"/>
    <field labelOnTop="0" name="irregular_line"/>
    <field labelOnTop="0" name="jurisdiction"/>
    <field labelOnTop="0" name="key"/>
    <field labelOnTop="0" name="lga"/>
    <field labelOnTop="0" name="lga_code"/>
    <field labelOnTop="0" name="misclose"/>
    <field labelOnTop="0" name="misclose_bearing"/>
    <field labelOnTop="0" name="misclose_distance"/>
    <field labelOnTop="0" name="misclose_tolerance"/>
    <field labelOnTop="0" name="missing_lines"/>
    <field labelOnTop="0" name="multipart"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="natural_boundary"/>
    <field labelOnTop="0" name="ob_name"/>
    <field labelOnTop="0" name="parcel_class"/>
    <field labelOnTop="0" name="parcel_format"/>
    <field labelOnTop="0" name="parcel_state"/>
    <field labelOnTop="0" name="parcel_type"/>
    <field labelOnTop="0" name="parent"/>
    <field labelOnTop="0" name="parish"/>
    <field labelOnTop="0" name="parish_code"/>
    <field labelOnTop="0" name="part"/>
    <field labelOnTop="0" name="plan_notations"/>
    <field labelOnTop="0" name="plan_number"/>
    <field labelOnTop="0" name="purpose"/>
    <field labelOnTop="0" name="registration_date"/>
    <field labelOnTop="0" name="stated_area"/>
    <field labelOnTop="0" name="sum_of_distances"/>
    <field labelOnTop="0" name="survey_land_type"/>
    <field labelOnTop="0" name="survey_type"/>
    <field labelOnTop="0" name="surveying_act"/>
    <field labelOnTop="0" name="surveyor"/>
    <field labelOnTop="0" name="surveyor_firm"/>
    <field labelOnTop="0" name="surveyor_reference"/>
    <field labelOnTop="0" name="surveyor_reg_no"/>
    <field labelOnTop="0" name="surveyor_reg_type"/>
    <field labelOnTop="0" name="surveyor_role"/>
    <field labelOnTop="0" name="township"/>
    <field labelOnTop="0" name="township_code"/>
    <field labelOnTop="0" name="valid_geom"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
