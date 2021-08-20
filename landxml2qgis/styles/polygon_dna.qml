<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" simplifyLocal="1" simplifyDrawingHints="1" readOnly="0" maxScale="0" labelsEnabled="1" version="3.16.3-Hannover" styleCategories="AllStyleCategories" simplifyDrawingTol="1" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" minScale="100000000">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal endField="" durationField="" accumulate="0" mode="0" startField="" startExpression="" endExpression="" enabled="0" durationUnit="min" fixedDuration="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="RuleRenderer" enableorderby="0" symbollevels="0" forceraster="0">
    <rules key="{6bc022a9-b6c4-4b7e-9f55-f5b427d1b6cb}">
      <rule symbol="0" key="{ebd5cd3d-ff1a-4893-a4bc-6077561a776f}" label="&lt;0.01" filter="(to_real(&quot;misclose_distance&quot;)) >= 0.000000 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.010 AND  &quot;closed&quot; = 'true'"/>
      <rule symbol="1" key="{86c62ad4-8b2d-4765-aa62-43cd748f43a1}" label="0.01 - 0.1" filter="(to_real(&quot;misclose_distance&quot;)) > 0.010 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.1 AND  &quot;closed&quot; = 'true'"/>
      <rule symbol="2" key="{560496d7-f514-4001-b777-21d472885b23}" label="0.1 - 0.5" filter="(to_real(&quot;misclose_distance&quot;)) > 0.1 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.5 AND  &quot;closed&quot; = 'true'"/>
      <rule symbol="3" key="{06da5260-0701-4640-b530-d8e76b024196}" label="0.5 - 1" filter="(to_real(&quot;misclose_distance&quot;)) > 0.5 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 1 AND  &quot;closed&quot; = 'true'"/>
      <rule symbol="4" key="{124dd83d-05bd-44f4-b803-1b74d2276671}" label=">1" filter="(to_real(&quot;misclose_distance&quot;)) > 1 AND  &quot;closed&quot; = 'true'"/>
      <rule symbol="5" key="{8c777898-4214-45f1-b6e2-a99459bac852}" filter="ELSE"/>
    </rules>
    <symbols>
      <symbol name="0" type="fill" clip_to_extent="1" alpha="0.05" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="18,255,1,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" type="fill" clip_to_extent="1" alpha="0.1" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="9,249,0,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="56,128,54,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" type="fill" clip_to_extent="1" alpha="0.15" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="218,251,2,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="56,128,54,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" type="fill" clip_to_extent="1" alpha="0.2" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="242,120,6,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="56,128,54,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" type="fill" clip_to_extent="1" alpha="0.2" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="254,0,12,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="56,128,54,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" type="fill" clip_to_extent="1" alpha="1" force_rhr="0">
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="114,155,111,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="35,35,35,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="b_diagonal" k="style"/>
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
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{d81849a2-9ba9-4215-a13f-ffc26a049f7b}">
      <rule key="{b2b8d535-5168-4b2d-84e1-87f031e1b5e4}" active="0">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName=" &quot;@name&quot; +  '\n'   +  &quot;@area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="152,125,183,255" k="color"/>
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="1" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="0" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="0"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{3d25e6fb-a817-430a-9e63-99e0bc0a5347}" filter=" &quot;@desc&quot;  is not NULL">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName="&quot;@name&quot; +  '\n'   +  &quot;@area&quot; + '\n'  +  &quot;@desc&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="232,113,141,255" k="color"/>
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="0" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="0" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="1"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{a8b6c2e1-dc88-4d6b-986b-ffc46c461eda}" filter="&quot;@desc&quot; is NULL">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName=" &quot;@name&quot; +  '\n'   +  &quot;@area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="141,90,153,255" k="color"/>
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="1" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="2" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="1"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{7f7f84d5-5dec-47b6-900e-49f906854aad}" filter="&quot;@area&quot; is NULL and &quot;@desc&quot; is not NULL">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName="&quot;@name&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="213,180,60,255" k="color"/>
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="0" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="0" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="0"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{931cc5c3-ec40-42d9-9a06-64c5a07bf18a}" filter="&quot;@area&quot; is NULL and &quot;@desc&quot; is NULL">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName="@name+  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="0" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="0" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="0"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
      <rule key="{3d0e2776-e679-4063-b2fb-c6804ab9be86}">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOrientation="horizontal" fontSizeUnit="Point" textOpacity="1" fontUnderline="0" capitalization="0" fontFamily=".AppleSystemUIFont" fontWeight="50" fontLetterSpacing="0" fieldName="" textColor="0,0,0,255" useSubstitutions="0" namedStyle="Regular" fontStrikeout="0" multilineHeight="1" fontItalic="0" fontSize="10" allowHtml="0" isExpression="1" fontKerning="1" previewBkgrdColor="255,255,255,255" fontWordSpacing="0" blendMode="0">
            <text-buffer bufferSizeUnits="MM" bufferDraw="0" bufferBlendMode="0" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskType="0" maskEnabled="0"/>
            <background shapeBlendMode="0" shapeJoinStyle="64" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeOffsetY="0" shapeRadiiUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeRadiiY="0" shapeRotation="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeOpacity="1">
              <symbol name="markerSymbol" type="marker" clip_to_extent="1" alpha="1" force_rhr="0">
                <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
                  <prop v="0" k="angle"/>
                  <prop v="114,155,111,255" k="color"/>
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
            <shadow shadowRadiusAlphaOnly="0" shadowScale="100" shadowColor="0,0,0,255" shadowBlendMode="6" shadowDraw="0" shadowOpacity="0.69999999999999996" shadowRadiusUnit="MM" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format plussign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="3" rightDirectionSymbol=">" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" decimals="3" addDirectionSymbol="0"/>
          <placement quadOffset="4" overrunDistanceUnit="MM" repeatDistanceUnits="MM" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" maxCurvedCharAngleIn="25" distUnits="MM" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" polygonPlacementFlags="2" centroidInside="0" xOffset="0" yOffset="0" geometryGenerator="" fitInPolygonOnly="0" dist="0" preserveRotation="1" repeatDistance="0" centroidWhole="0" offsetUnits="MM" lineAnchorPercent="0.5" layerType="PolygonGeometry" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" rotationAngle="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" placement="0" placementFlags="10"/>
          <rendering labelPerPart="0" upsidedownLabels="0" minFeatureSize="0" zIndex="0" scaleVisibility="0" fontMinPixelSize="3" fontLimitPixelSize="0" scaleMax="0" obstacle="1" drawLabels="1" displayAll="0" scaleMin="0" mergeLines="0" maxNumLabels="2000" fontMaxPixelSize="10000" obstacleFactor="1" limitNumLabels="0" obstacleType="1"/>
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
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; type=&quot;line&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; enabled=&quot;1&quot; locked=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
    <property key="dualview/previewExpressions" value="@name"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory spacingUnitScale="3x:0,0,0,0,0,0" backgroundAlpha="255" penAlpha="255" penColor="#000000" minScaleDenominator="0" lineSizeType="MM" scaleDependency="Area" spacing="0" penWidth="0" backgroundColor="#ffffff" maxScaleDenominator="1e+08" labelPlacementMethod="XHeight" enabled="0" minimumSize="0" direction="1" diagramOrientation="Up" spacingUnit="MM" sizeType="MM" height="15" showAxis="0" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" barWidth="5" width="15" scaleBasedVisibility="0" rotationOffset="270" opacity="1">
      <fontProperties style="" description=".SF NS Text,13,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol name="" type="line" clip_to_extent="1" alpha="1" force_rhr="0">
          <layer class="SimpleLine" pass="0" enabled="1" locked="0">
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
  <DiagramLayerSettings priority="0" obstacle="0" showAll="1" zIndex="0" dist="0" placement="1" linePlacementFlags="18">
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
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" type="double" value="0"/>
        <Option name="allowedGapsEnabled" type="bool" value="false"/>
        <Option name="allowedGapsLayer" type="QString" value=""/>
      </Option>
    </checkConfiguration>
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
    <field name="@area" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@class" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@desc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@parcelFormat" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@parcelType" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="@state" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Center" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Parcels" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="calc_area" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="closed" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="diagram" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="irregular_line" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="misclose_bearing" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="misclose_distance" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="misclose_tolerance" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="missing_lines" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="natural_boundary" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sum_of_distances" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="key"/>
    <alias index="1" name="" field="@area"/>
    <alias index="2" name="" field="@class"/>
    <alias index="3" name="" field="@desc"/>
    <alias index="4" name="" field="@name"/>
    <alias index="5" name="" field="@parcelFormat"/>
    <alias index="6" name="" field="@parcelType"/>
    <alias index="7" name="" field="@state"/>
    <alias index="8" name="" field="Center"/>
    <alias index="9" name="" field="Parcels"/>
    <alias index="10" name="" field="calc_area"/>
    <alias index="11" name="" field="closed"/>
    <alias index="12" name="" field="diagram"/>
    <alias index="13" name="" field="irregular_line"/>
    <alias index="14" name="" field="misclose_bearing"/>
    <alias index="15" name="" field="misclose_distance"/>
    <alias index="16" name="" field="misclose_tolerance"/>
    <alias index="17" name="" field="missing_lines"/>
    <alias index="18" name="" field="natural_boundary"/>
    <alias index="19" name="" field="sum_of_distances"/>
  </aliases>
  <defaults>
    <default expression="" field="key" applyOnUpdate="0"/>
    <default expression="" field="@area" applyOnUpdate="0"/>
    <default expression="" field="@class" applyOnUpdate="0"/>
    <default expression="" field="@desc" applyOnUpdate="0"/>
    <default expression="" field="@name" applyOnUpdate="0"/>
    <default expression="" field="@parcelFormat" applyOnUpdate="0"/>
    <default expression="" field="@parcelType" applyOnUpdate="0"/>
    <default expression="" field="@state" applyOnUpdate="0"/>
    <default expression="" field="Center" applyOnUpdate="0"/>
    <default expression="" field="Parcels" applyOnUpdate="0"/>
    <default expression="" field="calc_area" applyOnUpdate="0"/>
    <default expression="" field="closed" applyOnUpdate="0"/>
    <default expression="" field="diagram" applyOnUpdate="0"/>
    <default expression="" field="irregular_line" applyOnUpdate="0"/>
    <default expression="" field="misclose_bearing" applyOnUpdate="0"/>
    <default expression="" field="misclose_distance" applyOnUpdate="0"/>
    <default expression="" field="misclose_tolerance" applyOnUpdate="0"/>
    <default expression="" field="missing_lines" applyOnUpdate="0"/>
    <default expression="" field="natural_boundary" applyOnUpdate="0"/>
    <default expression="" field="sum_of_distances" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" exp_strength="0" field="key" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@area" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@class" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@desc" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@name" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@parcelFormat" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@parcelType" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="@state" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="Center" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="Parcels" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="calc_area" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="closed" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="diagram" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="irregular_line" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="misclose_bearing" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="misclose_distance" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="misclose_tolerance" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="missing_lines" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="natural_boundary" notnull_strength="0" unique_strength="0"/>
    <constraint constraints="0" exp_strength="0" field="sum_of_distances" notnull_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="key" desc=""/>
    <constraint exp="" field="@area" desc=""/>
    <constraint exp="" field="@class" desc=""/>
    <constraint exp="" field="@desc" desc=""/>
    <constraint exp="" field="@name" desc=""/>
    <constraint exp="" field="@parcelFormat" desc=""/>
    <constraint exp="" field="@parcelType" desc=""/>
    <constraint exp="" field="@state" desc=""/>
    <constraint exp="" field="Center" desc=""/>
    <constraint exp="" field="Parcels" desc=""/>
    <constraint exp="" field="calc_area" desc=""/>
    <constraint exp="" field="closed" desc=""/>
    <constraint exp="" field="diagram" desc=""/>
    <constraint exp="" field="irregular_line" desc=""/>
    <constraint exp="" field="misclose_bearing" desc=""/>
    <constraint exp="" field="misclose_distance" desc=""/>
    <constraint exp="" field="misclose_tolerance" desc=""/>
    <constraint exp="" field="missing_lines" desc=""/>
    <constraint exp="" field="natural_boundary" desc=""/>
    <constraint exp="" field="sum_of_distances" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column name="key" type="field" width="-1" hidden="0"/>
      <column name="@area" type="field" width="-1" hidden="0"/>
      <column name="@class" type="field" width="-1" hidden="0"/>
      <column name="@desc" type="field" width="-1" hidden="0"/>
      <column name="@name" type="field" width="-1" hidden="0"/>
      <column name="@parcelFormat" type="field" width="-1" hidden="0"/>
      <column name="@parcelType" type="field" width="-1" hidden="0"/>
      <column name="@state" type="field" width="-1" hidden="0"/>
      <column name="Center" type="field" width="-1" hidden="0"/>
      <column name="diagram" type="field" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
      <column name="calc_area" type="field" width="-1" hidden="0"/>
      <column name="closed" type="field" width="-1" hidden="0"/>
      <column name="irregular_line" type="field" width="-1" hidden="0"/>
      <column name="misclose_bearing" type="field" width="-1" hidden="0"/>
      <column name="misclose_distance" type="field" width="-1" hidden="0"/>
      <column name="misclose_tolerance" type="field" width="-1" hidden="0"/>
      <column name="missing_lines" type="field" width="-1" hidden="0"/>
      <column name="natural_boundary" type="field" width="-1" hidden="0"/>
      <column name="sum_of_distances" type="field" width="-1" hidden="0"/>
      <column name="Parcels" type="field" width="-1" hidden="0"/>
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
    <field name="@area" editable="1"/>
    <field name="@class" editable="1"/>
    <field name="@desc" editable="1"/>
    <field name="@name" editable="1"/>
    <field name="@parcelFormat" editable="1"/>
    <field name="@parcelType" editable="1"/>
    <field name="@state" editable="1"/>
    <field name="Center" editable="1"/>
    <field name="CoordGeom" editable="1"/>
    <field name="Parcels" editable="1"/>
    <field name="calc_area" editable="1"/>
    <field name="closed" editable="1"/>
    <field name="diagram" editable="1"/>
    <field name="geometry" editable="1"/>
    <field name="irregular_line" editable="1"/>
    <field name="key" editable="1"/>
    <field name="misclose_bearing" editable="1"/>
    <field name="misclose_distance" editable="1"/>
    <field name="misclose_tolerance" editable="1"/>
    <field name="missing_lines" editable="1"/>
    <field name="natural_boundary" editable="1"/>
    <field name="sum_of_distances" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="@area" labelOnTop="0"/>
    <field name="@class" labelOnTop="0"/>
    <field name="@desc" labelOnTop="0"/>
    <field name="@name" labelOnTop="0"/>
    <field name="@parcelFormat" labelOnTop="0"/>
    <field name="@parcelType" labelOnTop="0"/>
    <field name="@state" labelOnTop="0"/>
    <field name="Center" labelOnTop="0"/>
    <field name="CoordGeom" labelOnTop="0"/>
    <field name="Parcels" labelOnTop="0"/>
    <field name="calc_area" labelOnTop="0"/>
    <field name="closed" labelOnTop="0"/>
    <field name="diagram" labelOnTop="0"/>
    <field name="geometry" labelOnTop="0"/>
    <field name="irregular_line" labelOnTop="0"/>
    <field name="key" labelOnTop="0"/>
    <field name="misclose_bearing" labelOnTop="0"/>
    <field name="misclose_distance" labelOnTop="0"/>
    <field name="misclose_tolerance" labelOnTop="0"/>
    <field name="missing_lines" labelOnTop="0"/>
    <field name="natural_boundary" labelOnTop="0"/>
    <field name="sum_of_distances" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
