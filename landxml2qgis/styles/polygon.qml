<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.18.1-Zürich" styleCategories="AllStyleCategories" simplifyMaxScale="1" maxScale="0" simplifyDrawingTol="1" labelsEnabled="1" simplifyLocal="1" minScale="100000000" readOnly="0" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal accumulate="0" mode="0" endExpression="" durationUnit="min" durationField="" endField="" fixedDuration="0" startExpression="" startField="" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" type="RuleRenderer" enableorderby="0" forceraster="0">
    <rules key="{6bc022a9-b6c4-4b7e-9f55-f5b427d1b6cb}">
      <rule key="{ebd5cd3d-ff1a-4893-a4bc-6077561a776f}" label="0 - 0.01" filter="(to_real(&quot;misclose_distance&quot;)) >= 0.000000 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.01 AND  &quot;closed&quot; = 'True'" symbol="0"/>
      <rule key="{86c62ad4-8b2d-4765-aa62-43cd748f43a1}" label="0.01 - 0.1" filter="(to_real(&quot;misclose_distance&quot;)) > 0.01 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.1 AND  &quot;closed&quot; = 'True'" symbol="1"/>
      <rule key="{560496d7-f514-4001-b777-21d472885b23}" label="0.1 - 0.5" filter="(to_real(&quot;misclose_distance&quot;)) > 0.1 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 0.5 AND  &quot;closed&quot; = 'True'" symbol="2"/>
      <rule key="{06da5260-0701-4640-b530-d8e76b024196}" label="0.5 - 1" filter="(to_real(&quot;misclose_distance&quot;)) > 0.5 AND (to_real(&quot;misclose_distance&quot;)) &lt;= 1 AND  &quot;closed&quot; = 'True'" symbol="3"/>
      <rule key="{124dd83d-05bd-44f4-b803-1b74d2276671}" label=">1" filter="(to_real(&quot;misclose_distance&quot;)) > 1  AND  &quot;closed&quot; = 'True'" symbol="4"/>
      <rule key="{e52b27fa-80f1-4b29-9ffc-7a0a8915eba3}" filter="ELSE" symbol="5"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" name="0" type="fill" alpha="0.5" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="205,230,255,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="205,230,255,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="1" type="fill" alpha="0.5" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="145,194,240,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="145,194,240,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="2" type="fill" alpha="0.5" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="86,169,216,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="86,169,216,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="3" type="fill" alpha="0.5" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="37,121,185,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="37,121,185,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="4" type="fill" alpha="0.5" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="0,44,107,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="solid" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,44,107,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="5" type="fill" alpha="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" locked="0" enabled="1">
          <Option type="Map">
            <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
            <Option value="141,90,153,255" name="color" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="35,35,35,255" name="outline_color" type="QString"/>
            <Option value="solid" name="outline_style" type="QString"/>
            <Option value="0.26" name="outline_width" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option value="b_diagonal" name="style" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="141,90,153,255" k="color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{33121e45-2dd8-460c-adf3-ac8ea4b87732}">
      <rule key="{0d3b363e-dc5c-4ed2-a954-3d727230c436}" active="0">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName=" &quot;name&quot; +  '\n'   +  &quot;stated_area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="152,125,183,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="1" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="0" limitNumLabels="0" upsidedownLabels="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{fd3c4ef3-72a6-4b80-8cb3-5e9e0c6c7bf3}" filter=" &quot;desc&quot;  is not NULL">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName="&quot;name&quot; +  '\n'   +  &quot;stated_area&quot; + '\n'  +  &quot;desc&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="232,113,141,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="0" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{49d97129-18d2-4626-a28a-5fcb87a00768}" filter="&quot;desc&quot; is NULL">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName=" &quot;name&quot; +  '\n'   +  &quot;stated_area&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="141,90,153,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="1" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="1" limitNumLabels="0" upsidedownLabels="2" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{543cbde4-fa71-474f-9aef-019a70ddac1d}" filter="&quot;stated_area&quot; is NULL and &quot;desc&quot; is not NULL">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName="&quot;name&quot; +  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="0" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="0" limitNumLabels="0" upsidedownLabels="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{66ca26c8-4152-4fcd-83be-a4484da52574}" filter="&quot;stated_area&quot; is NULL and &quot;desc&quot; is NULL">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName="name+  '\n'  + 'Misclose:' +  to_string(round( &quot;misclose_distance&quot; ,3))" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="0" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="164,113,88,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="0" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="0" limitNumLabels="0" upsidedownLabels="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{7c6a5c0b-9812-45d1-886b-e92a13908495}">
        <settings calloutType="simple">
          <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName="" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
            <text-buffer bufferOpacity="1" bufferJoinStyle="128" bufferNoFill="1" bufferDraw="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0"/>
            <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSize="1.5" maskJoinStyle="128" maskSizeUnits="MM" maskedSymbolLayers="" maskEnabled="0" maskOpacity="1"/>
            <background shapeRadiiUnit="MM" shapeRadiiY="0" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOpacity="1" shapeOffsetY="0" shapeSizeX="0" shapeJoinStyle="64" shapeBlendMode="0" shapeOffsetUnit="MM" shapeSizeY="0" shapeRotationType="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeType="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderColor="128,128,128,255" shapeDraw="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeFillColor="255,255,255,255" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0">
              <symbol clip_to_extent="1" name="markerSymbol" type="marker" alpha="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer pass="0" class="SimpleMarker" locked="0" enabled="1">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="114,155,111,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
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
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.69999999999999996" shadowColor="0,0,0,255" shadowDraw="0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowRadius="1.5" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowRadiusUnit="MM"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format placeDirectionSymbol="0" wrapChar="" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" autoWrapLength="0" multilineAlign="3" addDirectionSymbol="0" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" plussign="0" rightDirectionSymbol=">"/>
          <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="0" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="0" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="PolygonGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
          <rendering fontLimitPixelSize="0" obstacleType="1" limitNumLabels="0" upsidedownLabels="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" scaleVisibility="0" obstacle="1" drawLabels="1" scaleMax="0" scaleMin="0" displayAll="0" obstacleFactor="1" fontMinPixelSize="3" zIndex="0" maxNumLabels="2000" minFeatureSize="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
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
    <DiagramCategory labelPlacementMethod="XHeight" penAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" penWidth="0" spacingUnit="MM" minimumSize="0" opacity="1" backgroundColor="#ffffff" height="15" enabled="0" minScaleDenominator="0" penColor="#000000" width="15" showAxis="0" diagramOrientation="Up" barWidth="5" maxScaleDenominator="1e+08" scaleDependency="Area" lineSizeType="MM" backgroundAlpha="255" spacing="0" sizeType="MM" spacingUnitScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" rotationOffset="270" direction="1">
      <fontProperties description=".SF NS Text,13,-1,5,50,0,0,0,0,0" style=""/>
      <attribute color="#000000" label="" field=""/>
      <axisSymbol>
        <symbol clip_to_extent="1" name="" type="line" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer pass="0" class="SimpleLine" locked="0" enabled="1">
            <Option type="Map">
              <Option value="0" name="align_dash_pattern" type="QString"/>
              <Option value="square" name="capstyle" type="QString"/>
              <Option value="5;2" name="customdash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
              <Option value="MM" name="customdash_unit" type="QString"/>
              <Option value="0" name="dash_pattern_offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
              <Option value="0" name="draw_inside_polygon" type="QString"/>
              <Option value="bevel" name="joinstyle" type="QString"/>
              <Option value="35,35,35,255" name="line_color" type="QString"/>
              <Option value="solid" name="line_style" type="QString"/>
              <Option value="0.26" name="line_width" type="QString"/>
              <Option value="MM" name="line_width_unit" type="QString"/>
              <Option value="0" name="offset" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
              <Option value="MM" name="offset_unit" type="QString"/>
              <Option value="0" name="ring_filter" type="QString"/>
              <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
              <Option value="0" name="use_custom_dash" type="QString"/>
              <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" priority="0" dist="0" obstacle="0" showAll="1" zIndex="0" placement="1">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
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
    <field name="ob_name" configurationFlags="None">
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
    <field name="part" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="multipart" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="parent" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="parcel_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="valid_geom" configurationFlags="None">
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
    <field name="easement" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="contains_nat_bdy" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="centre_point" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="stated_area" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="parcel_class" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="parcel_state" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="parcel_format" configurationFlags="None">
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
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="desc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="misclose" configurationFlags="None">
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
    <field name="misclose_bearing" configurationFlags="None">
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
    <field name="calculated_area" configurationFlags="None">
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
    <field name="has_misclose" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="key"/>
    <alias name="" index="1" field="ob_name"/>
    <alias name="" index="2" field="closed"/>
    <alias name="" index="3" field="part"/>
    <alias name="" index="4" field="multipart"/>
    <alias name="" index="5" field="parent"/>
    <alias name="" index="6" field="parcel_type"/>
    <alias name="" index="7" field="valid_geom"/>
    <alias name="" index="8" field="crs"/>
    <alias name="" index="9" field="easement"/>
    <alias name="" index="10" field="contains_nat_bdy"/>
    <alias name="" index="11" field="centre_point"/>
    <alias name="" index="12" field="stated_area"/>
    <alias name="" index="13" field="parcel_class"/>
    <alias name="" index="14" field="parcel_state"/>
    <alias name="" index="15" field="parcel_format"/>
    <alias name="" index="16" field="calc_area"/>
    <alias name="" index="17" field="name"/>
    <alias name="" index="18" field="desc"/>
    <alias name="" index="19" field="misclose"/>
    <alias name="" index="20" field="misclose_distance"/>
    <alias name="" index="21" field="misclose_bearing"/>
    <alias name="" index="22" field="irregular_line"/>
    <alias name="" index="23" field="natural_boundary"/>
    <alias name="" index="24" field="sum_of_distances"/>
    <alias name="" index="25" field="calculated_area"/>
    <alias name="" index="26" field="misclose_tolerance"/>
    <alias name="" index="27" field="missing_lines"/>
    <alias name="" index="28" field="has_misclose"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="key"/>
    <default expression="" applyOnUpdate="0" field="ob_name"/>
    <default expression="" applyOnUpdate="0" field="closed"/>
    <default expression="" applyOnUpdate="0" field="part"/>
    <default expression="" applyOnUpdate="0" field="multipart"/>
    <default expression="" applyOnUpdate="0" field="parent"/>
    <default expression="" applyOnUpdate="0" field="parcel_type"/>
    <default expression="" applyOnUpdate="0" field="valid_geom"/>
    <default expression="" applyOnUpdate="0" field="crs"/>
    <default expression="" applyOnUpdate="0" field="easement"/>
    <default expression="" applyOnUpdate="0" field="contains_nat_bdy"/>
    <default expression="" applyOnUpdate="0" field="centre_point"/>
    <default expression="" applyOnUpdate="0" field="stated_area"/>
    <default expression="" applyOnUpdate="0" field="parcel_class"/>
    <default expression="" applyOnUpdate="0" field="parcel_state"/>
    <default expression="" applyOnUpdate="0" field="parcel_format"/>
    <default expression="" applyOnUpdate="0" field="calc_area"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="desc"/>
    <default expression="" applyOnUpdate="0" field="misclose"/>
    <default expression="" applyOnUpdate="0" field="misclose_distance"/>
    <default expression="" applyOnUpdate="0" field="misclose_bearing"/>
    <default expression="" applyOnUpdate="0" field="irregular_line"/>
    <default expression="" applyOnUpdate="0" field="natural_boundary"/>
    <default expression="" applyOnUpdate="0" field="sum_of_distances"/>
    <default expression="" applyOnUpdate="0" field="calculated_area"/>
    <default expression="" applyOnUpdate="0" field="misclose_tolerance"/>
    <default expression="" applyOnUpdate="0" field="missing_lines"/>
    <default expression="" applyOnUpdate="0" field="has_misclose"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="key"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="ob_name"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="closed"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="part"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="multipart"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="parent"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="parcel_type"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="valid_geom"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="crs"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="easement"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="contains_nat_bdy"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="centre_point"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="stated_area"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="parcel_class"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="parcel_state"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="parcel_format"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="calc_area"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="name"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="desc"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="misclose"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="misclose_distance"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="misclose_bearing"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="irregular_line"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="natural_boundary"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="sum_of_distances"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="calculated_area"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="misclose_tolerance"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="missing_lines"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="has_misclose"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="key"/>
    <constraint desc="" exp="" field="ob_name"/>
    <constraint desc="" exp="" field="closed"/>
    <constraint desc="" exp="" field="part"/>
    <constraint desc="" exp="" field="multipart"/>
    <constraint desc="" exp="" field="parent"/>
    <constraint desc="" exp="" field="parcel_type"/>
    <constraint desc="" exp="" field="valid_geom"/>
    <constraint desc="" exp="" field="crs"/>
    <constraint desc="" exp="" field="easement"/>
    <constraint desc="" exp="" field="contains_nat_bdy"/>
    <constraint desc="" exp="" field="centre_point"/>
    <constraint desc="" exp="" field="stated_area"/>
    <constraint desc="" exp="" field="parcel_class"/>
    <constraint desc="" exp="" field="parcel_state"/>
    <constraint desc="" exp="" field="parcel_format"/>
    <constraint desc="" exp="" field="calc_area"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="desc"/>
    <constraint desc="" exp="" field="misclose"/>
    <constraint desc="" exp="" field="misclose_distance"/>
    <constraint desc="" exp="" field="misclose_bearing"/>
    <constraint desc="" exp="" field="irregular_line"/>
    <constraint desc="" exp="" field="natural_boundary"/>
    <constraint desc="" exp="" field="sum_of_distances"/>
    <constraint desc="" exp="" field="calculated_area"/>
    <constraint desc="" exp="" field="misclose_tolerance"/>
    <constraint desc="" exp="" field="missing_lines"/>
    <constraint desc="" exp="" field="has_misclose"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="0" name="key" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" name="calc_area" type="field" width="-1"/>
      <column hidden="0" name="closed" type="field" width="-1"/>
      <column hidden="0" name="irregular_line" type="field" width="-1"/>
      <column hidden="0" name="misclose_bearing" type="field" width="-1"/>
      <column hidden="0" name="misclose_distance" type="field" width="-1"/>
      <column hidden="0" name="misclose_tolerance" type="field" width="-1"/>
      <column hidden="0" name="missing_lines" type="field" width="-1"/>
      <column hidden="0" name="natural_boundary" type="field" width="-1"/>
      <column hidden="0" name="sum_of_distances" type="field" width="-1"/>
      <column hidden="0" name="ob_name" type="field" width="-1"/>
      <column hidden="0" name="part" type="field" width="-1"/>
      <column hidden="0" name="multipart" type="field" width="-1"/>
      <column hidden="0" name="parent" type="field" width="-1"/>
      <column hidden="0" name="parcel_type" type="field" width="-1"/>
      <column hidden="0" name="valid_geom" type="field" width="-1"/>
      <column hidden="0" name="crs" type="field" width="-1"/>
      <column hidden="0" name="easement" type="field" width="-1"/>
      <column hidden="0" name="contains_nat_bdy" type="field" width="-1"/>
      <column hidden="0" name="centre_point" type="field" width="-1"/>
      <column hidden="0" name="stated_area" type="field" width="-1"/>
      <column hidden="0" name="parcel_class" type="field" width="-1"/>
      <column hidden="0" name="parcel_state" type="field" width="-1"/>
      <column hidden="0" name="parcel_format" type="field" width="-1"/>
      <column hidden="0" name="name" type="field" width="-1"/>
      <column hidden="0" name="desc" type="field" width="-1"/>
      <column hidden="0" name="misclose" type="field" width="-1"/>
      <column hidden="0" name="calculated_area" type="field" width="-1"/>
      <column hidden="0" name="has_misclose" type="field" width="-1"/>
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
    <field editable="1" name="crs"/>
    <field editable="1" name="desc"/>
    <field editable="1" name="diagram"/>
    <field editable="1" name="easement"/>
    <field editable="1" name="geometry"/>
    <field editable="1" name="has_misclose"/>
    <field editable="1" name="irregular_line"/>
    <field editable="1" name="key"/>
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
    <field editable="1" name="part"/>
    <field editable="1" name="stated_area"/>
    <field editable="1" name="sum_of_distances"/>
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
    <field labelOnTop="0" name="crs"/>
    <field labelOnTop="0" name="desc"/>
    <field labelOnTop="0" name="diagram"/>
    <field labelOnTop="0" name="easement"/>
    <field labelOnTop="0" name="geometry"/>
    <field labelOnTop="0" name="has_misclose"/>
    <field labelOnTop="0" name="irregular_line"/>
    <field labelOnTop="0" name="key"/>
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
    <field labelOnTop="0" name="part"/>
    <field labelOnTop="0" name="stated_area"/>
    <field labelOnTop="0" name="sum_of_distances"/>
    <field labelOnTop="0" name="valid_geom"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
