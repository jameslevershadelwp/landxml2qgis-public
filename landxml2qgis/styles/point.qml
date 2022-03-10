<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" version="3.18.1-Zürich" minScale="100000000" hasScaleBasedVisibilityFlag="0" readOnly="0" styleCategories="AllStyleCategories" maxScale="0" simplifyAlgorithm="0" simplifyDrawingTol="1" labelsEnabled="1" simplifyDrawingHints="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" endField="" durationField="" mode="0" startField="" durationUnit="min" endExpression="" fixedDuration="0" accumulate="0" startExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="singleSymbol" enableorderby="0" symbollevels="0" forceraster="0">
    <symbols>
      <symbol name="0" type="marker" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="color" type="QString" value="229,182,54,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="circle"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="2"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="MM"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="229,182,54,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="2" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{6a43d827-4123-4449-b3ff-05226d2ebc7b}">
      <rule filter=" &quot;point_oid&quot; is not null" key="{0f596d5c-55a6-4782-a28b-a9800e47b034}">
        <settings calloutType="simple">
          <text-style capitalization="0" isExpression="1" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" multilineHeight="1" blendMode="0" allowHtml="0" fieldName="to_string(&quot;point_oid&quot;) + '\n' +&#xa;&quot;name&quot; + '\n' + &quot;point_type&quot; " textColor="0,0,0,255" fontSizeUnit="Point" textOpacity="1" useSubstitutions="0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0" fontItalic="0" fontFamily=".AppleSystemUIFont" fontKerning="1" namedStyle="Regular" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWeight="50" fontSize="10">
            <text-buffer bufferNoFill="1" bufferBlendMode="0" bufferDraw="0" bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferColor="255,255,255,255"/>
            <text-mask maskedSymbolLayers="" maskJoinStyle="128" maskSize="0" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1"/>
            <background shapeOffsetX="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeRadiiX="0" shapeBlendMode="0" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeJoinStyle="64" shapeRadiiY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeUnit="MM">
              <symbol name="markerSymbol" type="marker" alpha="1" force_rhr="0" clip_to_extent="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="color" type="QString" value="125,139,143,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="125,139,143,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetUnit="MM" shadowDraw="0" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" placeDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" formatNumbers="0" multilineAlign="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" wrapChar="" addDirectionSymbol="0" plussign="0" decimals="3"/>
          <placement geometryGeneratorType="PointGeometry" rotationAngle="0" maxCurvedCharAngleOut="-25" quadOffset="4" layerType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" placement="0" preserveRotation="1" offsetType="0" polygonPlacementFlags="2" placementFlags="10" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" lineAnchorPercent="0.5" repeatDistance="0" dist="0" maxCurvedCharAngleIn="25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGeneratorEnabled="0" centroidWhole="0" lineAnchorType="0" repeatDistanceUnits="MM" yOffset="0" offsetUnits="MM" xOffset="0" distUnits="MM" fitInPolygonOnly="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" centroidInside="0" priority="5"/>
          <rendering obstacle="1" mergeLines="0" drawLabels="1" scaleVisibility="0" obstacleType="0" scaleMin="0" limitNumLabels="0" fontLimitPixelSize="0" zIndex="0" displayAll="0" scaleMax="0" minFeatureSize="0" fontMaxPixelSize="10000" upsidedownLabels="0" maxNumLabels="2000" labelPerPart="0" fontMinPixelSize="3" obstacleFactor="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="ELSE" key="{3e3e11a1-54c9-4428-b006-3f2f05d57249}">
        <settings calloutType="simple">
          <text-style capitalization="0" isExpression="1" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" multilineHeight="1" blendMode="0" allowHtml="0" fieldName="&quot;name&quot; + '\n' + &quot;point_type&quot; " textColor="0,0,0,255" fontSizeUnit="Point" textOpacity="1" useSubstitutions="0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0" fontItalic="0" fontFamily=".AppleSystemUIFont" fontKerning="1" namedStyle="Regular" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWeight="50" fontSize="10">
            <text-buffer bufferNoFill="1" bufferBlendMode="0" bufferDraw="0" bufferSize="1" bufferSizeUnits="MM" bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferColor="255,255,255,255"/>
            <text-mask maskedSymbolLayers="" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeUnits="MM" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1"/>
            <background shapeOffsetX="0" shapeOffsetUnit="MM" shapeSVGFile="" shapeRadiiX="0" shapeBlendMode="0" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeFillColor="255,255,255,255" shapeRotation="0" shapeJoinStyle="64" shapeRadiiY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeUnit="MM">
              <symbol name="markerSymbol" type="marker" alpha="1" force_rhr="0" clip_to_extent="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="color" type="QString" value="164,113,88,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="164,113,88,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetUnit="MM" shadowDraw="0" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetAngle="135" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format reverseDirectionSymbol="0" placeDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" formatNumbers="0" multilineAlign="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" wrapChar="" addDirectionSymbol="0" plussign="0" decimals="3"/>
          <placement geometryGeneratorType="PointGeometry" rotationAngle="0" maxCurvedCharAngleOut="-25" quadOffset="4" layerType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" placement="0" preserveRotation="1" offsetType="0" polygonPlacementFlags="2" placementFlags="10" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" lineAnchorPercent="0.5" repeatDistance="0" dist="0" maxCurvedCharAngleIn="25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGeneratorEnabled="0" centroidWhole="0" lineAnchorType="0" repeatDistanceUnits="MM" yOffset="0" offsetUnits="MM" xOffset="0" distUnits="MM" fitInPolygonOnly="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" centroidInside="0" priority="5"/>
          <rendering obstacle="1" mergeLines="0" drawLabels="1" scaleVisibility="0" obstacleType="1" scaleMin="0" limitNumLabels="0" fontLimitPixelSize="0" zIndex="0" displayAll="0" scaleMax="0" minFeatureSize="0" fontMaxPixelSize="10000" upsidedownLabels="0" maxNumLabels="2000" labelPerPart="0" fontMinPixelSize="3" obstacleFactor="1"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" enabled="0" penWidth="0" sizeScale="3x:0,0,0,0,0,0" showAxis="0" width="15" minimumSize="0" maxScaleDenominator="1e+08" direction="1" lineSizeType="MM" spacing="0" diagramOrientation="Up" backgroundAlpha="255" barWidth="5" labelPlacementMethod="XHeight" scaleBasedVisibility="0" penAlpha="255" spacingUnit="MM" backgroundColor="#ffffff" scaleDependency="Area" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" spacingUnitScale="3x:0,0,0,0,0,0" rotationOffset="270" height="15" minScaleDenominator="0">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol name="" type="line" alpha="1" force_rhr="0" clip_to_extent="1">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <Option type="Map">
              <Option name="align_dash_pattern" type="QString" value="0"/>
              <Option name="capstyle" type="QString" value="square"/>
              <Option name="customdash" type="QString" value="5;2"/>
              <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="customdash_unit" type="QString" value="MM"/>
              <Option name="dash_pattern_offset" type="QString" value="0"/>
              <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
              <Option name="draw_inside_polygon" type="QString" value="0"/>
              <Option name="joinstyle" type="QString" value="bevel"/>
              <Option name="line_color" type="QString" value="35,35,35,255"/>
              <Option name="line_style" type="QString" value="solid"/>
              <Option name="line_width" type="QString" value="0.26"/>
              <Option name="line_width_unit" type="QString" value="MM"/>
              <Option name="offset" type="QString" value="0"/>
              <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offset_unit" type="QString" value="MM"/>
              <Option name="ring_filter" type="QString" value="0"/>
              <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
              <Option name="use_custom_dash" type="QString" value="0"/>
              <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            </Option>
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" placement="0" linePlacementFlags="18" showAll="1" priority="0" zIndex="0" dist="0">
    <properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="key" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ob_name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="original_crs" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="crs" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mon_state" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mon_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mon_condition" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mon_desc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="mon_origin_survey" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="translated" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="translated_x" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="translated_y" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="translated_z" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ccc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="p_constrained" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="q_constrained" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="point_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="point_oid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="associated_point_oid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="associated_point_distance" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="point_state" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="latitude" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="longitude" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="neh" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="original_geom" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="key"/>
    <alias index="1" name="" field="ob_name"/>
    <alias index="2" name="" field="original_crs"/>
    <alias index="3" name="" field="crs"/>
    <alias index="4" name="" field="mon_state"/>
    <alias index="5" name="" field="mon_type"/>
    <alias index="6" name="" field="mon_condition"/>
    <alias index="7" name="" field="mon_desc"/>
    <alias index="8" name="" field="mon_origin_survey"/>
    <alias index="9" name="" field="translated"/>
    <alias index="10" name="" field="translated_x"/>
    <alias index="11" name="" field="translated_y"/>
    <alias index="12" name="" field="translated_z"/>
    <alias index="13" name="" field="ccc"/>
    <alias index="14" name="" field="p_constrained"/>
    <alias index="15" name="" field="q_constrained"/>
    <alias index="16" name="" field="name"/>
    <alias index="17" name="" field="point_type"/>
    <alias index="18" name="" field="point_oid"/>
    <alias index="19" name="" field="associated_point_oid"/>
    <alias index="20" name="" field="associated_point_distance"/>
    <alias index="21" name="" field="point_state"/>
    <alias index="22" name="" field="latitude"/>
    <alias index="23" name="" field="longitude"/>
    <alias index="24" name="" field="neh"/>
    <alias index="25" name="" field="original_geom"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="key"/>
    <default expression="" applyOnUpdate="0" field="ob_name"/>
    <default expression="" applyOnUpdate="0" field="original_crs"/>
    <default expression="" applyOnUpdate="0" field="crs"/>
    <default expression="" applyOnUpdate="0" field="mon_state"/>
    <default expression="" applyOnUpdate="0" field="mon_type"/>
    <default expression="" applyOnUpdate="0" field="mon_condition"/>
    <default expression="" applyOnUpdate="0" field="mon_desc"/>
    <default expression="" applyOnUpdate="0" field="mon_origin_survey"/>
    <default expression="" applyOnUpdate="0" field="translated"/>
    <default expression="" applyOnUpdate="0" field="translated_x"/>
    <default expression="" applyOnUpdate="0" field="translated_y"/>
    <default expression="" applyOnUpdate="0" field="translated_z"/>
    <default expression="" applyOnUpdate="0" field="ccc"/>
    <default expression="" applyOnUpdate="0" field="p_constrained"/>
    <default expression="" applyOnUpdate="0" field="q_constrained"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="point_type"/>
    <default expression="" applyOnUpdate="0" field="point_oid"/>
    <default expression="" applyOnUpdate="0" field="associated_point_oid"/>
    <default expression="" applyOnUpdate="0" field="associated_point_distance"/>
    <default expression="" applyOnUpdate="0" field="point_state"/>
    <default expression="" applyOnUpdate="0" field="latitude"/>
    <default expression="" applyOnUpdate="0" field="longitude"/>
    <default expression="" applyOnUpdate="0" field="neh"/>
    <default expression="" applyOnUpdate="0" field="original_geom"/>
  </defaults>
  <constraints>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="key"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="ob_name"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="original_crs"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="crs"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="mon_state"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="mon_type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="mon_condition"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="mon_desc"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="mon_origin_survey"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="translated"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="translated_x"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="translated_y"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="translated_z"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="ccc"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="p_constrained"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="q_constrained"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="name"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="point_type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="point_oid"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="associated_point_oid"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="associated_point_distance"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="point_state"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="latitude"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="longitude"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="neh"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="original_geom"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="key"/>
    <constraint desc="" exp="" field="ob_name"/>
    <constraint desc="" exp="" field="original_crs"/>
    <constraint desc="" exp="" field="crs"/>
    <constraint desc="" exp="" field="mon_state"/>
    <constraint desc="" exp="" field="mon_type"/>
    <constraint desc="" exp="" field="mon_condition"/>
    <constraint desc="" exp="" field="mon_desc"/>
    <constraint desc="" exp="" field="mon_origin_survey"/>
    <constraint desc="" exp="" field="translated"/>
    <constraint desc="" exp="" field="translated_x"/>
    <constraint desc="" exp="" field="translated_y"/>
    <constraint desc="" exp="" field="translated_z"/>
    <constraint desc="" exp="" field="ccc"/>
    <constraint desc="" exp="" field="p_constrained"/>
    <constraint desc="" exp="" field="q_constrained"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="point_type"/>
    <constraint desc="" exp="" field="point_oid"/>
    <constraint desc="" exp="" field="associated_point_oid"/>
    <constraint desc="" exp="" field="associated_point_distance"/>
    <constraint desc="" exp="" field="point_state"/>
    <constraint desc="" exp="" field="latitude"/>
    <constraint desc="" exp="" field="longitude"/>
    <constraint desc="" exp="" field="neh"/>
    <constraint desc="" exp="" field="original_geom"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column hidden="0" name="key" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" name="ob_name" width="-1" type="field"/>
      <column hidden="0" name="original_crs" width="-1" type="field"/>
      <column hidden="0" name="crs" width="-1" type="field"/>
      <column hidden="0" name="mon_state" width="-1" type="field"/>
      <column hidden="0" name="mon_type" width="-1" type="field"/>
      <column hidden="0" name="mon_condition" width="-1" type="field"/>
      <column hidden="0" name="mon_desc" width="-1" type="field"/>
      <column hidden="0" name="mon_origin_survey" width="-1" type="field"/>
      <column hidden="0" name="translated" width="-1" type="field"/>
      <column hidden="0" name="translated_x" width="-1" type="field"/>
      <column hidden="0" name="translated_y" width="-1" type="field"/>
      <column hidden="0" name="translated_z" width="-1" type="field"/>
      <column hidden="0" name="name" width="-1" type="field"/>
      <column hidden="0" name="point_type" width="-1" type="field"/>
      <column hidden="0" name="point_oid" width="-1" type="field"/>
      <column hidden="0" name="associated_point_oid" width="-1" type="field"/>
      <column hidden="0" name="associated_point_distance" width="-1" type="field"/>
      <column hidden="0" name="point_state" width="-1" type="field"/>
      <column hidden="0" name="latitude" width="-1" type="field"/>
      <column hidden="0" name="longitude" width="-1" type="field"/>
      <column hidden="0" name="neh" width="-1" type="field"/>
      <column hidden="0" name="original_geom" width="-1" type="field"/>
      <column hidden="0" name="ccc" width="-1" type="field"/>
      <column hidden="0" name="p_constrained" width="-1" type="field"/>
      <column hidden="0" name="q_constrained" width="-1" type="field"/>
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
    <field name="#text" editable="1"/>
    <field name="@latitude" editable="1"/>
    <field name="@longitude" editable="1"/>
    <field name="@name" editable="1"/>
    <field name="@oID" editable="1"/>
    <field name="@pntSurv" editable="1"/>
    <field name="@state" editable="1"/>
    <field name="associated_point_distance" editable="1"/>
    <field name="associated_point_oid" editable="1"/>
    <field name="ccc" editable="1"/>
    <field name="crs" editable="1"/>
    <field name="diagram" editable="1"/>
    <field name="geometry" editable="1"/>
    <field name="key" editable="1"/>
    <field name="latitude" editable="1"/>
    <field name="longitude" editable="1"/>
    <field name="mon_condition" editable="1"/>
    <field name="mon_desc" editable="1"/>
    <field name="mon_origin_survey" editable="1"/>
    <field name="mon_state" editable="1"/>
    <field name="mon_type" editable="1"/>
    <field name="name" editable="1"/>
    <field name="neh" editable="1"/>
    <field name="ob_name" editable="1"/>
    <field name="original_crs" editable="1"/>
    <field name="original_geom" editable="1"/>
    <field name="p_constrained" editable="1"/>
    <field name="point_oid" editable="1"/>
    <field name="point_state" editable="1"/>
    <field name="point_type" editable="1"/>
    <field name="q_constrained" editable="1"/>
    <field name="translated" editable="1"/>
    <field name="translated_x" editable="1"/>
    <field name="translated_y" editable="1"/>
    <field name="translated_z" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="#text"/>
    <field labelOnTop="0" name="@latitude"/>
    <field labelOnTop="0" name="@longitude"/>
    <field labelOnTop="0" name="@name"/>
    <field labelOnTop="0" name="@oID"/>
    <field labelOnTop="0" name="@pntSurv"/>
    <field labelOnTop="0" name="@state"/>
    <field labelOnTop="0" name="associated_point_distance"/>
    <field labelOnTop="0" name="associated_point_oid"/>
    <field labelOnTop="0" name="ccc"/>
    <field labelOnTop="0" name="crs"/>
    <field labelOnTop="0" name="diagram"/>
    <field labelOnTop="0" name="geometry"/>
    <field labelOnTop="0" name="key"/>
    <field labelOnTop="0" name="latitude"/>
    <field labelOnTop="0" name="longitude"/>
    <field labelOnTop="0" name="mon_condition"/>
    <field labelOnTop="0" name="mon_desc"/>
    <field labelOnTop="0" name="mon_origin_survey"/>
    <field labelOnTop="0" name="mon_state"/>
    <field labelOnTop="0" name="mon_type"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="neh"/>
    <field labelOnTop="0" name="ob_name"/>
    <field labelOnTop="0" name="original_crs"/>
    <field labelOnTop="0" name="original_geom"/>
    <field labelOnTop="0" name="p_constrained"/>
    <field labelOnTop="0" name="point_oid"/>
    <field labelOnTop="0" name="point_state"/>
    <field labelOnTop="0" name="point_type"/>
    <field labelOnTop="0" name="q_constrained"/>
    <field labelOnTop="0" name="translated"/>
    <field labelOnTop="0" name="translated_x"/>
    <field labelOnTop="0" name="translated_y"/>
    <field labelOnTop="0" name="translated_z"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>@name</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
