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
    <rules key="{62ad0bbc-18a6-448f-8bdc-46dd056dfec5}">
      <rule key="{9de89687-71da-4dc4-b72e-6fd0a3e955e2}" label="normal" filter="lower(&quot;line_type&quot;) + ', ' + lower(to_string(&quot;overlapping&quot;)) = 'normal, false'" symbol="0"/>
      <rule key="{12fe0a17-7324-4ad8-a265-82ece2fa133c}" label="overlapping" filter="lower(to_string(&quot;overlapping&quot;)) = 'true'" symbol="1"/>
      <rule key="{81d0fcc7-e4b9-42e4-a0f8-2b0e40bbc63e}" label="traverse" filter="ELSE" symbol="2"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" name="0" type="line" alpha="1" force_rhr="0">
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
            <Option value="81,91,206,255" name="line_color" type="QString"/>
            <Option value="solid" name="line_style" type="QString"/>
            <Option value="0.66" name="line_width" type="QString"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="1" type="line" alpha="1" force_rhr="0">
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
            <Option value="1,243,255,255" name="line_color" type="QString"/>
            <Option value="solid" name="line_style" type="QString"/>
            <Option value="2.06" name="line_width" type="QString"/>
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
          <prop v="1,243,255,255" k="line_color"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" name="2" type="line" alpha="1" force_rhr="0">
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
            <Option value="round" name="capstyle" type="QString"/>
            <Option value="0.66;2" name="customdash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
            <Option value="MM" name="customdash_unit" type="QString"/>
            <Option value="0" name="dash_pattern_offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
            <Option value="0" name="draw_inside_polygon" type="QString"/>
            <Option value="round" name="joinstyle" type="QString"/>
            <Option value="219,30,42,255" name="line_color" type="QString"/>
            <Option value="solid" name="line_style" type="QString"/>
            <Option value="0.46" name="line_width" type="QString"/>
            <Option value="MM" name="line_width_unit" type="QString"/>
            <Option value="0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="0" name="ring_filter" type="QString"/>
            <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
            <Option value="1" name="use_custom_dash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
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
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style useSubstitutions="0" multilineHeight="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeUnit="Point" fontLetterSpacing="0" fontUnderline="0" textColor="0,0,0,255" fontItalic="0" namedStyle="Regular" fontSize="10" fontWeight="50" previewBkgrdColor="255,255,255,255" capitalization="0" textOpacity="1" allowHtml="0" fieldName="&quot;name&quot; + &#xa;' \nArcD: ' + to_string(&quot;arc_length&quot;) + &#xa;' \nArcDf: ' + to_string(&quot;arc_length_feet&quot;) + &#xa;' \nArcDl: ' + to_string(round(&quot;arc_length_links&quot;,1)) + &#xa; ' \nB: ' + to_string(&quot;hp_bearing&quot;)  + '\nRad: ' + to_string(&quot;radius&quot;) + &#xa;'\nRadf: ' + to_string(&quot;radius_feet&quot;) + &#xa;'\nRadl: ' + to_string(round(&quot;radius_links&quot;,1)) + &#xa;'\nRot: ' + &quot;rot&quot;" textOrientation="horizontal" blendMode="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontKerning="1">
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
      <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" placement="2" xOffset="0" repeatDistanceUnits="MM" overrunDistance="0" lineAnchorPercent="0.5" distUnits="MM" maxCurvedCharAngleOut="-25" lineAnchorType="0" offsetType="0" maxCurvedCharAngleIn="25" repeatDistance="0" offsetUnits="MM" rotationAngle="0" priority="5" yOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" preserveRotation="1" centroidWhole="0" overrunDistanceUnit="MM" centroidInside="0" geometryGenerator="" fitInPolygonOnly="0" geometryGeneratorEnabled="0" layerType="LineGeometry" quadOffset="4" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
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
  <DiagramLayerSettings linePlacementFlags="18" priority="0" dist="0" obstacle="0" showAll="1" zIndex="0" placement="2">
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
    <alias name="" index="20" field="centre_point"/>
    <alias name="" index="21" field="radius"/>
    <alias name="" index="22" field="arc_length"/>
    <alias name="" index="23" field="rot"/>
    <alias name="" index="24" field="desc"/>
    <alias name="" index="25" field="distance_feet"/>
    <alias name="" index="26" field="distance_links"/>
    <alias name="" index="27" field="radius_feet"/>
    <alias name="" index="28" field="radius_links"/>
    <alias name="" index="29" field="arc_length_feet"/>
    <alias name="" index="30" field="arc_length_links"/>
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
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="key"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="ob_name"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="is_arc"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="reversed"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="crs"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="likely_candidate"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="overlapping"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="name"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="distance"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="hp_bearing"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="dd_bearing"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="distance_std"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="bearing_std"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="setup_point"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="target_point"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="line_type"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="distance_type"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="azimuth_type"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="az_adopt_fact"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="is_nb"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="centre_point"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="radius"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="arc_length"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="rot"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="desc"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="distance_feet"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="distance_links"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="radius_feet"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="radius_links"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="arc_length_feet"/>
    <constraint notnull_strength="0" constraints="0" exp_strength="0" unique_strength="0" field="arc_length_links"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="key"/>
    <constraint desc="" exp="" field="ob_name"/>
    <constraint desc="" exp="" field="is_arc"/>
    <constraint desc="" exp="" field="reversed"/>
    <constraint desc="" exp="" field="crs"/>
    <constraint desc="" exp="" field="likely_candidate"/>
    <constraint desc="" exp="" field="overlapping"/>
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
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="0" name="key" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" name="overlapping" type="field" width="-1"/>
      <column hidden="0" name="ob_name" type="field" width="-1"/>
      <column hidden="0" name="is_arc" type="field" width="-1"/>
      <column hidden="0" name="reversed" type="field" width="-1"/>
      <column hidden="0" name="crs" type="field" width="-1"/>
      <column hidden="0" name="likely_candidate" type="field" width="-1"/>
      <column hidden="0" name="name" type="field" width="-1"/>
      <column hidden="0" name="distance" type="field" width="-1"/>
      <column hidden="0" name="hp_bearing" type="field" width="-1"/>
      <column hidden="0" name="dd_bearing" type="field" width="-1"/>
      <column hidden="0" name="distance_std" type="field" width="-1"/>
      <column hidden="0" name="bearing_std" type="field" width="-1"/>
      <column hidden="0" name="setup_point" type="field" width="-1"/>
      <column hidden="0" name="target_point" type="field" width="-1"/>
      <column hidden="0" name="line_type" type="field" width="-1"/>
      <column hidden="0" name="distance_type" type="field" width="-1"/>
      <column hidden="0" name="azimuth_type" type="field" width="-1"/>
      <column hidden="0" name="az_adopt_fact" type="field" width="-1"/>
      <column hidden="0" name="is_nb" type="field" width="-1"/>
      <column hidden="0" name="centre_point" type="field" width="-1"/>
      <column hidden="0" name="radius" type="field" width="-1"/>
      <column hidden="0" name="arc_length" type="field" width="-1"/>
      <column hidden="0" name="rot" type="field" width="-1"/>
      <column hidden="0" name="desc" type="field" width="-1"/>
      <column hidden="0" name="distance_feet" type="field" width="-1"/>
      <column hidden="0" name="distance_links" type="field" width="-1"/>
      <column hidden="0" name="radius_feet" type="field" width="-1"/>
      <column hidden="0" name="radius_links" type="field" width="-1"/>
      <column hidden="0" name="arc_length_feet" type="field" width="-1"/>
      <column hidden="0" name="arc_length_links" type="field" width="-1"/>
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
    <field editable="1" name="@arcType"/>
    <field editable="1" name="@azimuth"/>
    <field editable="1" name="@azimuthAdoptionFactor"/>
    <field editable="1" name="@azimuthType"/>
    <field editable="1" name="@chordAzimuth"/>
    <field editable="1" name="@desc"/>
    <field editable="1" name="@distanceType"/>
    <field editable="1" name="@horizDistance"/>
    <field editable="1" name="@length"/>
    <field editable="1" name="@lengthFeet"/>
    <field editable="1" name="@lengthLinks"/>
    <field editable="1" name="@name"/>
    <field editable="1" name="@purpose"/>
    <field editable="1" name="@radius"/>
    <field editable="1" name="@radiusFeet"/>
    <field editable="1" name="@radiusLinks"/>
    <field editable="1" name="@rot"/>
    <field editable="1" name="@setupID"/>
    <field editable="1" name="@targetSetupID"/>
    <field editable="1" name="arc_length"/>
    <field editable="1" name="arc_length_feet"/>
    <field editable="1" name="arc_length_links"/>
    <field editable="1" name="az_adopt_fact"/>
    <field editable="1" name="azimuth_type"/>
    <field editable="1" name="bearing_std"/>
    <field editable="1" name="centre_point"/>
    <field editable="1" name="crs"/>
    <field editable="1" name="dd_bearing"/>
    <field editable="1" name="desc"/>
    <field editable="1" name="diagram"/>
    <field editable="1" name="distance"/>
    <field editable="1" name="distance_feet"/>
    <field editable="1" name="distance_links"/>
    <field editable="1" name="distance_std"/>
    <field editable="1" name="distance_type"/>
    <field editable="1" name="geometry"/>
    <field editable="1" name="hp_bearing"/>
    <field editable="1" name="is_arc"/>
    <field editable="1" name="is_nb"/>
    <field editable="1" name="key"/>
    <field editable="1" name="likely_candidate"/>
    <field editable="1" name="line_type"/>
    <field editable="1" name="name"/>
    <field editable="1" name="ob_name"/>
    <field editable="1" name="overlapping"/>
    <field editable="1" name="radius"/>
    <field editable="1" name="radius_feet"/>
    <field editable="1" name="radius_links"/>
    <field editable="1" name="reversed"/>
    <field editable="1" name="rot"/>
    <field editable="1" name="setup_point"/>
    <field editable="1" name="target_point"/>
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
    <field labelOnTop="0" name="target_point"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
