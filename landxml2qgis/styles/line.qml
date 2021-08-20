<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" simplifyDrawingHints="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" version="3.18.1-Zürich" maxScale="0" simplifyDrawingTol="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyLocal="1" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal endField="" mode="0" enabled="0" fixedDuration="0" startExpression="" startField="" endExpression="" accumulate="0" durationField="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="RuleRenderer" symbollevels="0" enableorderby="0" forceraster="0">
    <rules key="{62ad0bbc-18a6-448f-8bdc-46dd056dfec5}">
      <rule filter="lower(&quot;line_type&quot;) + ', ' + lower(to_string(&quot;overlapping&quot;)) = 'normal, false'" label="normal" key="{96ae2d5b-de22-4863-99a6-1452e0c50bf5}" symbol="0"/>
      <rule filter=" &quot;likely_candidate&quot; = 'True'" label="likely" key="{6d079f18-36e5-430d-843f-5976176d8c72}" symbol="1"/>
      <rule filter="lower(to_string(&quot;overlapping&quot;)) = 'true'" checkstate="0" label="overlapping" key="{3168a973-34a1-4d92-934f-2d5ebd548e39}" symbol="2"/>
      <rule filter="ELSE" label="traverse" key="{79d77b31-cedf-4a37-b3d4-a404f01fd7de}" symbol="3"/>
    </rules>
    <symbols>
      <symbol type="line" name="0" clip_to_extent="1" alpha="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="81,91,206,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="0.66"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="81,91,206,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.66" k="line_width"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="1" clip_to_extent="1" alpha="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="254,0,237,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="2.06"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="254,0,237,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.06" k="line_width"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="2" clip_to_extent="1" alpha="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="square"/>
            <Option type="QString" name="customdash" value="5;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="bevel"/>
            <Option type="QString" name="line_color" value="1,243,255,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="1.66"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="0"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
          <prop v="1,243,255,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1.66" k="line_width"/>
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
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="line" name="3" clip_to_extent="1" alpha="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" name="align_dash_pattern" value="0"/>
            <Option type="QString" name="capstyle" value="round"/>
            <Option type="QString" name="customdash" value="0.66;2"/>
            <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="customdash_unit" value="MM"/>
            <Option type="QString" name="dash_pattern_offset" value="0"/>
            <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
            <Option type="QString" name="draw_inside_polygon" value="0"/>
            <Option type="QString" name="joinstyle" value="round"/>
            <Option type="QString" name="line_color" value="219,30,42,255"/>
            <Option type="QString" name="line_style" value="solid"/>
            <Option type="QString" name="line_width" value="0.46"/>
            <Option type="QString" name="line_width_unit" value="MM"/>
            <Option type="QString" name="offset" value="0"/>
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
            <Option type="QString" name="offset_unit" value="MM"/>
            <Option type="QString" name="ring_filter" value="0"/>
            <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
            <Option type="QString" name="use_custom_dash" value="1"/>
            <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="round" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="219,30,42,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style allowHtml="0" fontWeight="50" fontStrikeout="0" previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontWordSpacing="0" fontItalic="0" blendMode="0" namedStyle="Regular" textColor="0,0,0,255" fontLetterSpacing="0" textOrientation="horizontal" capitalization="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="&quot;name&quot; + '\nD: ' + &quot;distance&quot; + '\nB: ' + &quot;hp_bearing&quot;" fontUnderline="0" fontKerning="1" isExpression="1" fontSizeUnit="Point" fontSize="10" fontFamily=".AppleSystemUIFont" textOpacity="1" multilineHeight="1">
        <text-buffer bufferDraw="0" bufferOpacity="1" bufferSizeUnits="MM" bufferSize="1" bufferColor="255,255,255,255" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1"/>
        <text-mask maskEnabled="0" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers="" maskSize="0" maskOpacity="1" maskJoinStyle="128" maskSizeUnits="MM"/>
        <background shapeSizeX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeRotation="0" shapeOpacity="1" shapeRadiiY="0" shapeBorderWidth="0" shapeRadiiX="0" shapeSizeY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeJoinStyle="64" shapeDraw="0" shapeRadiiUnit="MM" shapeBorderColor="128,128,128,255" shapeOffsetX="0" shapeBorderWidthUnit="MM" shapeSizeType="0" shapeSizeUnit="MM" shapeFillColor="255,255,255,255" shapeSVGFile="" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeType="0">
          <symbol type="marker" name="markerSymbol" clip_to_extent="1" alpha="1" force_rhr="0">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <Option type="Map">
                <Option type="QString" name="angle" value="0"/>
                <Option type="QString" name="color" value="213,180,60,255"/>
                <Option type="QString" name="horizontal_anchor_point" value="1"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="name" value="circle"/>
                <Option type="QString" name="offset" value="0,0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="outline_color" value="35,35,35,255"/>
                <Option type="QString" name="outline_style" value="solid"/>
                <Option type="QString" name="outline_width" value="0"/>
                <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="outline_width_unit" value="MM"/>
                <Option type="QString" name="scale_method" value="diameter"/>
                <Option type="QString" name="size" value="2"/>
                <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="size_unit" value="MM"/>
                <Option type="QString" name="vertical_anchor_point" value="1"/>
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
                  <Option type="QString" name="name" value=""/>
                  <Option name="properties"/>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowScale="100" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowRadius="1.5" shadowUnder="0" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowColor="0,0,0,255"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format multilineAlign="0" useMaxLineLengthForAutoWrap="1" formatNumbers="0" decimals="3" addDirectionSymbol="0" placeDirectionSymbol="0" wrapChar="" plussign="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" autoWrapLength="0" reverseDirectionSymbol="0"/>
      <placement repeatDistance="0" distMapUnitScale="3x:0,0,0,0,0,0" placement="2" fitInPolygonOnly="0" dist="0" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" polygonPlacementFlags="2" geometryGenerator="" lineAnchorPercent="0.5" offsetUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" lineAnchorType="0" rotationAngle="0" placementFlags="10" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" overrunDistance="0" geometryGeneratorEnabled="0" geometryGeneratorType="PointGeometry" centroidWhole="0" distUnits="MM" yOffset="0" overrunDistanceUnit="MM" offsetType="0" quadOffset="4" xOffset="0" maxCurvedCharAngleOut="-25" layerType="LineGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0"/>
      <rendering obstacleType="0" displayAll="0" limitNumLabels="0" mergeLines="0" zIndex="0" fontMinPixelSize="3" fontMaxPixelSize="10000" scaleMax="0" fontLimitPixelSize="0" scaleVisibility="0" obstacle="1" labelPerPart="0" drawLabels="1" maxNumLabels="2000" minFeatureSize="0" scaleMin="0" obstacleFactor="1" upsidedownLabels="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
          <Option type="bool" name="drawToAllParts" value="false"/>
          <Option type="QString" name="enabled" value="0"/>
          <Option type="QString" name="labelAnchorPoint" value="point_on_exterior"/>
          <Option type="QString" name="lineSymbol" value="&lt;symbol type=&quot;line&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
          <Option type="double" name="minLength" value="0"/>
          <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="minLengthUnit" value="MM"/>
          <Option type="double" name="offsetFromAnchor" value="0"/>
          <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
          <Option type="double" name="offsetFromLabel" value="0"/>
          <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
          <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" height="15" scaleDependency="Area" spacingUnit="MM" showAxis="0" penWidth="0" enabled="0" spacingUnitScale="3x:0,0,0,0,0,0" diagramOrientation="Up" lineSizeType="MM" scaleBasedVisibility="0" width="15" minimumSize="0" sizeType="MM" maxScaleDenominator="1e+08" rotationOffset="270" direction="1" opacity="1" penAlpha="255" labelPlacementMethod="XHeight" backgroundAlpha="255" spacing="0" lineSizeScale="3x:0,0,0,0,0,0" penColor="#000000" minScaleDenominator="0" sizeScale="3x:0,0,0,0,0,0" barWidth="5">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" name="" clip_to_extent="1" alpha="1" force_rhr="0">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0"/>
              <Option type="QString" name="capstyle" value="square"/>
              <Option type="QString" name="customdash" value="5;2"/>
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="customdash_unit" value="MM"/>
              <Option type="QString" name="dash_pattern_offset" value="0"/>
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
              <Option type="QString" name="draw_inside_polygon" value="0"/>
              <Option type="QString" name="joinstyle" value="bevel"/>
              <Option type="QString" name="line_color" value="35,35,35,255"/>
              <Option type="QString" name="line_style" value="solid"/>
              <Option type="QString" name="line_width" value="0.26"/>
              <Option type="QString" name="line_width_unit" value="MM"/>
              <Option type="QString" name="offset" value="0"/>
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offset_unit" value="MM"/>
              <Option type="QString" name="ring_filter" value="0"/>
              <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
              <Option type="QString" name="use_custom_dash" value="0"/>
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
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
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" linePlacementFlags="18" placement="2" dist="0" showAll="1" priority="0" zIndex="0">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
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
    <field name="is_arc" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reversed" configurationFlags="None">
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
    <field name="likely_candidate" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="overlapping" configurationFlags="None">
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
    <field name="distance" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="hp_bearing" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="dd_bearing" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="distance_std" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bearing_std" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="setup_point" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="target_point" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="line_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="distance_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="azimuth_type" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="az_adopt_fact" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="is_nb" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="distance_feet" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="distance_links" configurationFlags="None">
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
    <alias name="" index="2" field="is_arc"/>
    <alias name="" index="3" field="reversed"/>
    <alias name="" index="4" field="crs"/>
    <alias name="" index="5" field="likely_candidate"/>
    <alias name="" index="6" field="overlapping"/>
    <alias name="" index="7" field="name"/>
    <alias name="" index="8" field="distance"/>
    <alias name="" index="9" field="hp_bearing"/>
    <alias name="" index="10" field="dd_bearing"/>
    <alias name="" index="11" field="distance_std"/>
    <alias name="" index="12" field="bearing_std"/>
    <alias name="" index="13" field="setup_point"/>
    <alias name="" index="14" field="target_point"/>
    <alias name="" index="15" field="line_type"/>
    <alias name="" index="16" field="distance_type"/>
    <alias name="" index="17" field="azimuth_type"/>
    <alias name="" index="18" field="az_adopt_fact"/>
    <alias name="" index="19" field="is_nb"/>
    <alias name="" index="20" field="distance_feet"/>
    <alias name="" index="21" field="distance_links"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="key"/>
    <default expression="" applyOnUpdate="0" field="ob_name"/>
    <default expression="" applyOnUpdate="0" field="is_arc"/>
    <default expression="" applyOnUpdate="0" field="reversed"/>
    <default expression="" applyOnUpdate="0" field="crs"/>
    <default expression="" applyOnUpdate="0" field="likely_candidate"/>
    <default expression="" applyOnUpdate="0" field="overlapping"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="distance"/>
    <default expression="" applyOnUpdate="0" field="hp_bearing"/>
    <default expression="" applyOnUpdate="0" field="dd_bearing"/>
    <default expression="" applyOnUpdate="0" field="distance_std"/>
    <default expression="" applyOnUpdate="0" field="bearing_std"/>
    <default expression="" applyOnUpdate="0" field="setup_point"/>
    <default expression="" applyOnUpdate="0" field="target_point"/>
    <default expression="" applyOnUpdate="0" field="line_type"/>
    <default expression="" applyOnUpdate="0" field="distance_type"/>
    <default expression="" applyOnUpdate="0" field="azimuth_type"/>
    <default expression="" applyOnUpdate="0" field="az_adopt_fact"/>
    <default expression="" applyOnUpdate="0" field="is_nb"/>
    <default expression="" applyOnUpdate="0" field="distance_feet"/>
    <default expression="" applyOnUpdate="0" field="distance_links"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="0" field="key" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="ob_name" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="is_arc" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="reversed" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="crs" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="likely_candidate" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="overlapping" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="name" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="distance" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="hp_bearing" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="dd_bearing" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="distance_std" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="bearing_std" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="setup_point" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="target_point" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="line_type" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="distance_type" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="azimuth_type" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="az_adopt_fact" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="is_nb" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="distance_feet" unique_strength="0" constraints="0"/>
    <constraint exp_strength="0" notnull_strength="0" field="distance_links" unique_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="key"/>
    <constraint exp="" desc="" field="ob_name"/>
    <constraint exp="" desc="" field="is_arc"/>
    <constraint exp="" desc="" field="reversed"/>
    <constraint exp="" desc="" field="crs"/>
    <constraint exp="" desc="" field="likely_candidate"/>
    <constraint exp="" desc="" field="overlapping"/>
    <constraint exp="" desc="" field="name"/>
    <constraint exp="" desc="" field="distance"/>
    <constraint exp="" desc="" field="hp_bearing"/>
    <constraint exp="" desc="" field="dd_bearing"/>
    <constraint exp="" desc="" field="distance_std"/>
    <constraint exp="" desc="" field="bearing_std"/>
    <constraint exp="" desc="" field="setup_point"/>
    <constraint exp="" desc="" field="target_point"/>
    <constraint exp="" desc="" field="line_type"/>
    <constraint exp="" desc="" field="distance_type"/>
    <constraint exp="" desc="" field="azimuth_type"/>
    <constraint exp="" desc="" field="az_adopt_fact"/>
    <constraint exp="" desc="" field="is_nb"/>
    <constraint exp="" desc="" field="distance_feet"/>
    <constraint exp="" desc="" field="distance_links"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" name="key" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" name="overlapping" hidden="0" width="-1"/>
      <column type="field" name="ob_name" hidden="0" width="-1"/>
      <column type="field" name="is_arc" hidden="0" width="-1"/>
      <column type="field" name="reversed" hidden="0" width="-1"/>
      <column type="field" name="crs" hidden="0" width="-1"/>
      <column type="field" name="likely_candidate" hidden="0" width="-1"/>
      <column type="field" name="name" hidden="0" width="-1"/>
      <column type="field" name="distance" hidden="0" width="-1"/>
      <column type="field" name="hp_bearing" hidden="0" width="-1"/>
      <column type="field" name="dd_bearing" hidden="0" width="-1"/>
      <column type="field" name="distance_std" hidden="0" width="-1"/>
      <column type="field" name="bearing_std" hidden="0" width="-1"/>
      <column type="field" name="setup_point" hidden="0" width="-1"/>
      <column type="field" name="target_point" hidden="0" width="-1"/>
      <column type="field" name="line_type" hidden="0" width="-1"/>
      <column type="field" name="distance_type" hidden="0" width="-1"/>
      <column type="field" name="azimuth_type" hidden="0" width="-1"/>
      <column type="field" name="az_adopt_fact" hidden="0" width="-1"/>
      <column type="field" name="is_nb" hidden="0" width="-1"/>
      <column type="field" name="distance_feet" hidden="0" width="-1"/>
      <column type="field" name="distance_links" hidden="0" width="-1"/>
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
    <field name="@azimuth" editable="1"/>
    <field name="@azimuthAdoptionFactor" editable="1"/>
    <field name="@azimuthType" editable="1"/>
    <field name="@desc" editable="1"/>
    <field name="@distanceType" editable="1"/>
    <field name="@horizDistance" editable="1"/>
    <field name="@horizDistanceFeet" editable="1"/>
    <field name="@horizDistanceLinks" editable="1"/>
    <field name="@name" editable="1"/>
    <field name="@purpose" editable="1"/>
    <field name="@setupID" editable="1"/>
    <field name="@targetSetupID" editable="1"/>
    <field name="az_adopt_fact" editable="1"/>
    <field name="azimuth_type" editable="1"/>
    <field name="bearing_std" editable="1"/>
    <field name="crs" editable="1"/>
    <field name="dd_bearing" editable="1"/>
    <field name="diagram" editable="1"/>
    <field name="distance" editable="1"/>
    <field name="distance_feet" editable="1"/>
    <field name="distance_links" editable="1"/>
    <field name="distance_std" editable="1"/>
    <field name="distance_type" editable="1"/>
    <field name="geometry" editable="1"/>
    <field name="hp_bearing" editable="1"/>
    <field name="is_arc" editable="1"/>
    <field name="is_nb" editable="1"/>
    <field name="key" editable="1"/>
    <field name="likely_candidate" editable="1"/>
    <field name="line_type" editable="1"/>
    <field name="name" editable="1"/>
    <field name="ob_name" editable="1"/>
    <field name="overlapping" editable="1"/>
    <field name="reversed" editable="1"/>
    <field name="setup_point" editable="1"/>
    <field name="target_point" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="@azimuth" labelOnTop="0"/>
    <field name="@azimuthAdoptionFactor" labelOnTop="0"/>
    <field name="@azimuthType" labelOnTop="0"/>
    <field name="@desc" labelOnTop="0"/>
    <field name="@distanceType" labelOnTop="0"/>
    <field name="@horizDistance" labelOnTop="0"/>
    <field name="@horizDistanceFeet" labelOnTop="0"/>
    <field name="@horizDistanceLinks" labelOnTop="0"/>
    <field name="@name" labelOnTop="0"/>
    <field name="@purpose" labelOnTop="0"/>
    <field name="@setupID" labelOnTop="0"/>
    <field name="@targetSetupID" labelOnTop="0"/>
    <field name="az_adopt_fact" labelOnTop="0"/>
    <field name="azimuth_type" labelOnTop="0"/>
    <field name="bearing_std" labelOnTop="0"/>
    <field name="crs" labelOnTop="0"/>
    <field name="dd_bearing" labelOnTop="0"/>
    <field name="diagram" labelOnTop="0"/>
    <field name="distance" labelOnTop="0"/>
    <field name="distance_feet" labelOnTop="0"/>
    <field name="distance_links" labelOnTop="0"/>
    <field name="distance_std" labelOnTop="0"/>
    <field name="distance_type" labelOnTop="0"/>
    <field name="geometry" labelOnTop="0"/>
    <field name="hp_bearing" labelOnTop="0"/>
    <field name="is_arc" labelOnTop="0"/>
    <field name="is_nb" labelOnTop="0"/>
    <field name="key" labelOnTop="0"/>
    <field name="likely_candidate" labelOnTop="0"/>
    <field name="line_type" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="ob_name" labelOnTop="0"/>
    <field name="overlapping" labelOnTop="0"/>
    <field name="reversed" labelOnTop="0"/>
    <field name="setup_point" labelOnTop="0"/>
    <field name="target_point" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
