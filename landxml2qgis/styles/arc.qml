<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" version="3.18.1-Zürich" minScale="100000000" hasScaleBasedVisibilityFlag="0" readOnly="0" styleCategories="AllStyleCategories" maxScale="0" simplifyAlgorithm="0" simplifyDrawingTol="1" labelsEnabled="1" simplifyDrawingHints="1" simplifyLocal="1">
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
  <renderer-v2 type="RuleRenderer" enableorderby="0" symbollevels="0" forceraster="0">
    <rules key="{62ad0bbc-18a6-448f-8bdc-46dd056dfec5}">
      <rule symbol="0" filter="lower(&quot;line_type&quot;) + ', ' + lower(to_string(&quot;overlapping&quot;)) = 'normal, false'" key="{96ae2d5b-de22-4863-99a6-1452e0c50bf5}" label="normal"/>
      <rule checkstate="0" symbol="1" filter="lower(to_string(&quot;overlapping&quot;)) = 'true'" key="{3168a973-34a1-4d92-934f-2d5ebd548e39}" label="overlapping"/>
      <rule symbol="2" filter="ELSE" key="{79d77b31-cedf-4a37-b3d4-a404f01fd7de}" label="traverse"/>
    </rules>
    <symbols>
      <symbol name="0" type="line" alpha="1" force_rhr="0" clip_to_extent="1">
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
            <Option name="line_color" type="QString" value="81,91,206,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.66"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" type="line" alpha="1" force_rhr="0" clip_to_extent="1">
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
            <Option name="line_color" type="QString" value="1,243,255,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="1.66"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" type="line" alpha="1" force_rhr="0" clip_to_extent="1">
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
            <Option name="capstyle" type="QString" value="round"/>
            <Option name="customdash" type="QString" value="0.66;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="round"/>
            <Option name="line_color" type="QString" value="219,30,42,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.46"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="1"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style capitalization="0" isExpression="1" textOrientation="horizontal" previewBkgrdColor="255,255,255,255" multilineHeight="1" blendMode="0" allowHtml="0" fieldName="&quot;name&quot; + ' \nArcD: ' + format_number(&quot;arc_length&quot;,3) +  ' \nB: ' + format_number(&quot;hp_bearing&quot;,4)  + '\nRad: ' + &quot;radius&quot; + '\nRot: ' + &quot;rot&quot;" textColor="0,0,0,255" fontSizeUnit="Point" textOpacity="1" useSubstitutions="0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0" fontItalic="0" fontFamily=".AppleSystemUIFont" fontKerning="1" namedStyle="Regular" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWeight="50" fontSize="10">
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
                <Option name="color" type="QString" value="213,180,60,255"/>
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
      <text-format reverseDirectionSymbol="0" placeDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" formatNumbers="0" multilineAlign="0" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" wrapChar="" addDirectionSymbol="0" plussign="0" decimals="3"/>
      <placement geometryGeneratorType="PointGeometry" rotationAngle="0" maxCurvedCharAngleOut="-25" quadOffset="4" layerType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGenerator="" placement="2" preserveRotation="1" offsetType="0" polygonPlacementFlags="2" placementFlags="10" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" lineAnchorPercent="0.5" repeatDistance="0" dist="0" maxCurvedCharAngleIn="25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGeneratorEnabled="0" centroidWhole="0" lineAnchorType="0" repeatDistanceUnits="MM" yOffset="0" offsetUnits="MM" xOffset="0" distUnits="MM" fitInPolygonOnly="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" centroidInside="0" priority="5"/>
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
  </labeling>
  <customproperties>
    <property value="&quot;@name&quot;" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" enabled="0" penWidth="0" sizeScale="3x:0,0,0,0,0,0" showAxis="0" width="15" minimumSize="0" maxScaleDenominator="1e+08" direction="1" lineSizeType="MM" spacing="0" diagramOrientation="Up" backgroundAlpha="255" barWidth="5" labelPlacementMethod="XHeight" scaleBasedVisibility="0" penAlpha="255" spacingUnit="MM" backgroundColor="#ffffff" scaleDependency="Area" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" spacingUnitScale="3x:0,0,0,0,0,0" rotationOffset="270" height="15" minScaleDenominator="0">
      <fontProperties description=".SF NS Text,13,-1,5,50,0,0,0,0,0" style=""/>
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
  <DiagramLayerSettings obstacle="0" placement="2" linePlacementFlags="18" showAll="1" priority="0" zIndex="0" dist="0">
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
    <field name="swing_dd_bearing" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="swing_hp_bearing" configurationFlags="None">
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
    <field name="centre_point" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="radius" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="arc_length" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rot" configurationFlags="None">
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
    <field name="radius_feet" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="radius_links" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="arc_length_feet" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="arc_length_links" configurationFlags="None">
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
    <alias index="2" name="" field="is_arc"/>
    <alias index="3" name="" field="reversed"/>
    <alias index="4" name="" field="crs"/>
    <alias index="5" name="" field="likely_candidate"/>
    <alias index="6" name="" field="overlapping"/>
    <alias index="7" name="" field="swing_dd_bearing"/>
    <alias index="8" name="" field="swing_hp_bearing"/>
    <alias index="9" name="" field="name"/>
    <alias index="10" name="" field="distance"/>
    <alias index="11" name="" field="hp_bearing"/>
    <alias index="12" name="" field="dd_bearing"/>
    <alias index="13" name="" field="distance_std"/>
    <alias index="14" name="" field="bearing_std"/>
    <alias index="15" name="" field="setup_point"/>
    <alias index="16" name="" field="target_point"/>
    <alias index="17" name="" field="line_type"/>
    <alias index="18" name="" field="distance_type"/>
    <alias index="19" name="" field="azimuth_type"/>
    <alias index="20" name="" field="az_adopt_fact"/>
    <alias index="21" name="" field="is_nb"/>
    <alias index="22" name="" field="centre_point"/>
    <alias index="23" name="" field="radius"/>
    <alias index="24" name="" field="arc_length"/>
    <alias index="25" name="" field="rot"/>
    <alias index="26" name="" field="desc"/>
    <alias index="27" name="" field="distance_feet"/>
    <alias index="28" name="" field="distance_links"/>
    <alias index="29" name="" field="radius_feet"/>
    <alias index="30" name="" field="radius_links"/>
    <alias index="31" name="" field="arc_length_feet"/>
    <alias index="32" name="" field="arc_length_links"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="key"/>
    <default expression="" applyOnUpdate="0" field="ob_name"/>
    <default expression="" applyOnUpdate="0" field="is_arc"/>
    <default expression="" applyOnUpdate="0" field="reversed"/>
    <default expression="" applyOnUpdate="0" field="crs"/>
    <default expression="" applyOnUpdate="0" field="likely_candidate"/>
    <default expression="" applyOnUpdate="0" field="overlapping"/>
    <default expression="" applyOnUpdate="0" field="swing_dd_bearing"/>
    <default expression="" applyOnUpdate="0" field="swing_hp_bearing"/>
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
    <default expression="" applyOnUpdate="0" field="centre_point"/>
    <default expression="" applyOnUpdate="0" field="radius"/>
    <default expression="" applyOnUpdate="0" field="arc_length"/>
    <default expression="" applyOnUpdate="0" field="rot"/>
    <default expression="" applyOnUpdate="0" field="desc"/>
    <default expression="" applyOnUpdate="0" field="distance_feet"/>
    <default expression="" applyOnUpdate="0" field="distance_links"/>
    <default expression="" applyOnUpdate="0" field="radius_feet"/>
    <default expression="" applyOnUpdate="0" field="radius_links"/>
    <default expression="" applyOnUpdate="0" field="arc_length_feet"/>
    <default expression="" applyOnUpdate="0" field="arc_length_links"/>
  </defaults>
  <constraints>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="key"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="ob_name"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="is_arc"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="reversed"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="crs"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="likely_candidate"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="overlapping"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="swing_dd_bearing"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="swing_hp_bearing"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="name"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="distance"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="hp_bearing"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="dd_bearing"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="distance_std"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="bearing_std"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="setup_point"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="target_point"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="line_type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="distance_type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="azimuth_type"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="az_adopt_fact"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="is_nb"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="centre_point"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="radius"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="arc_length"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="rot"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="desc"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="distance_feet"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="distance_links"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="radius_feet"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="radius_links"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="arc_length_feet"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" notnull_strength="0" field="arc_length_links"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="key"/>
    <constraint desc="" exp="" field="ob_name"/>
    <constraint desc="" exp="" field="is_arc"/>
    <constraint desc="" exp="" field="reversed"/>
    <constraint desc="" exp="" field="crs"/>
    <constraint desc="" exp="" field="likely_candidate"/>
    <constraint desc="" exp="" field="overlapping"/>
    <constraint desc="" exp="" field="swing_dd_bearing"/>
    <constraint desc="" exp="" field="swing_hp_bearing"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="distance"/>
    <constraint desc="" exp="" field="hp_bearing"/>
    <constraint desc="" exp="" field="dd_bearing"/>
    <constraint desc="" exp="" field="distance_std"/>
    <constraint desc="" exp="" field="bearing_std"/>
    <constraint desc="" exp="" field="setup_point"/>
    <constraint desc="" exp="" field="target_point"/>
    <constraint desc="" exp="" field="line_type"/>
    <constraint desc="" exp="" field="distance_type"/>
    <constraint desc="" exp="" field="azimuth_type"/>
    <constraint desc="" exp="" field="az_adopt_fact"/>
    <constraint desc="" exp="" field="is_nb"/>
    <constraint desc="" exp="" field="centre_point"/>
    <constraint desc="" exp="" field="radius"/>
    <constraint desc="" exp="" field="arc_length"/>
    <constraint desc="" exp="" field="rot"/>
    <constraint desc="" exp="" field="desc"/>
    <constraint desc="" exp="" field="distance_feet"/>
    <constraint desc="" exp="" field="distance_links"/>
    <constraint desc="" exp="" field="radius_feet"/>
    <constraint desc="" exp="" field="radius_links"/>
    <constraint desc="" exp="" field="arc_length_feet"/>
    <constraint desc="" exp="" field="arc_length_links"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column hidden="0" name="key" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" name="overlapping" width="-1" type="field"/>
      <column hidden="0" name="ob_name" width="-1" type="field"/>
      <column hidden="0" name="is_arc" width="-1" type="field"/>
      <column hidden="0" name="reversed" width="-1" type="field"/>
      <column hidden="0" name="crs" width="-1" type="field"/>
      <column hidden="0" name="likely_candidate" width="-1" type="field"/>
      <column hidden="0" name="name" width="-1" type="field"/>
      <column hidden="0" name="distance" width="-1" type="field"/>
      <column hidden="0" name="hp_bearing" width="-1" type="field"/>
      <column hidden="0" name="dd_bearing" width="-1" type="field"/>
      <column hidden="0" name="distance_std" width="-1" type="field"/>
      <column hidden="0" name="bearing_std" width="-1" type="field"/>
      <column hidden="0" name="setup_point" width="-1" type="field"/>
      <column hidden="0" name="target_point" width="-1" type="field"/>
      <column hidden="0" name="line_type" width="-1" type="field"/>
      <column hidden="0" name="distance_type" width="-1" type="field"/>
      <column hidden="0" name="azimuth_type" width="-1" type="field"/>
      <column hidden="0" name="az_adopt_fact" width="-1" type="field"/>
      <column hidden="0" name="is_nb" width="-1" type="field"/>
      <column hidden="0" name="centre_point" width="-1" type="field"/>
      <column hidden="0" name="radius" width="-1" type="field"/>
      <column hidden="0" name="arc_length" width="-1" type="field"/>
      <column hidden="0" name="rot" width="-1" type="field"/>
      <column hidden="0" name="desc" width="-1" type="field"/>
      <column hidden="0" name="distance_feet" width="-1" type="field"/>
      <column hidden="0" name="distance_links" width="-1" type="field"/>
      <column hidden="0" name="radius_feet" width="-1" type="field"/>
      <column hidden="0" name="radius_links" width="-1" type="field"/>
      <column hidden="0" name="arc_length_feet" width="-1" type="field"/>
      <column hidden="0" name="arc_length_links" width="-1" type="field"/>
      <column hidden="0" name="swing_dd_bearing" width="-1" type="field"/>
      <column hidden="0" name="swing_hp_bearing" width="-1" type="field"/>
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
    <field name="@arcType" editable="1"/>
    <field name="@azimuth" editable="1"/>
    <field name="@azimuthAdoptionFactor" editable="1"/>
    <field name="@azimuthType" editable="1"/>
    <field name="@chordAzimuth" editable="1"/>
    <field name="@desc" editable="1"/>
    <field name="@distanceType" editable="1"/>
    <field name="@horizDistance" editable="1"/>
    <field name="@length" editable="1"/>
    <field name="@lengthFeet" editable="1"/>
    <field name="@lengthLinks" editable="1"/>
    <field name="@name" editable="1"/>
    <field name="@purpose" editable="1"/>
    <field name="@radius" editable="1"/>
    <field name="@radiusFeet" editable="1"/>
    <field name="@radiusLinks" editable="1"/>
    <field name="@rot" editable="1"/>
    <field name="@setupID" editable="1"/>
    <field name="@targetSetupID" editable="1"/>
    <field name="arc_length" editable="1"/>
    <field name="arc_length_feet" editable="1"/>
    <field name="arc_length_links" editable="1"/>
    <field name="az_adopt_fact" editable="1"/>
    <field name="azimuth_type" editable="1"/>
    <field name="bearing_std" editable="1"/>
    <field name="centre_point" editable="1"/>
    <field name="crs" editable="1"/>
    <field name="dd_bearing" editable="1"/>
    <field name="desc" editable="1"/>
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
    <field name="radius" editable="1"/>
    <field name="radius_feet" editable="1"/>
    <field name="radius_links" editable="1"/>
    <field name="reversed" editable="1"/>
    <field name="rot" editable="1"/>
    <field name="setup_point" editable="1"/>
    <field name="swing_dd_bearing" editable="1"/>
    <field name="swing_hp_bearing" editable="1"/>
    <field name="target_point" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="@arcType"/>
    <field labelOnTop="0" name="@azimuth"/>
    <field labelOnTop="0" name="@azimuthAdoptionFactor"/>
    <field labelOnTop="0" name="@azimuthType"/>
    <field labelOnTop="0" name="@chordAzimuth"/>
    <field labelOnTop="0" name="@desc"/>
    <field labelOnTop="0" name="@distanceType"/>
    <field labelOnTop="0" name="@horizDistance"/>
    <field labelOnTop="0" name="@length"/>
    <field labelOnTop="0" name="@lengthFeet"/>
    <field labelOnTop="0" name="@lengthLinks"/>
    <field labelOnTop="0" name="@name"/>
    <field labelOnTop="0" name="@purpose"/>
    <field labelOnTop="0" name="@radius"/>
    <field labelOnTop="0" name="@radiusFeet"/>
    <field labelOnTop="0" name="@radiusLinks"/>
    <field labelOnTop="0" name="@rot"/>
    <field labelOnTop="0" name="@setupID"/>
    <field labelOnTop="0" name="@targetSetupID"/>
    <field labelOnTop="0" name="arc_length"/>
    <field labelOnTop="0" name="arc_length_feet"/>
    <field labelOnTop="0" name="arc_length_links"/>
    <field labelOnTop="0" name="az_adopt_fact"/>
    <field labelOnTop="0" name="azimuth_type"/>
    <field labelOnTop="0" name="bearing_std"/>
    <field labelOnTop="0" name="centre_point"/>
    <field labelOnTop="0" name="crs"/>
    <field labelOnTop="0" name="dd_bearing"/>
    <field labelOnTop="0" name="desc"/>
    <field labelOnTop="0" name="diagram"/>
    <field labelOnTop="0" name="distance"/>
    <field labelOnTop="0" name="distance_feet"/>
    <field labelOnTop="0" name="distance_links"/>
    <field labelOnTop="0" name="distance_std"/>
    <field labelOnTop="0" name="distance_type"/>
    <field labelOnTop="0" name="geometry"/>
    <field labelOnTop="0" name="hp_bearing"/>
    <field labelOnTop="0" name="is_arc"/>
    <field labelOnTop="0" name="is_nb"/>
    <field labelOnTop="0" name="key"/>
    <field labelOnTop="0" name="likely_candidate"/>
    <field labelOnTop="0" name="line_type"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="ob_name"/>
    <field labelOnTop="0" name="overlapping"/>
    <field labelOnTop="0" name="radius"/>
    <field labelOnTop="0" name="radius_feet"/>
    <field labelOnTop="0" name="radius_links"/>
    <field labelOnTop="0" name="reversed"/>
    <field labelOnTop="0" name="rot"/>
    <field labelOnTop="0" name="setup_point"/>
    <field labelOnTop="0" name="swing_dd_bearing"/>
    <field labelOnTop="0" name="swing_hp_bearing"/>
    <field labelOnTop="0" name="target_point"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
