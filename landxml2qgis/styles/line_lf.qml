<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" simplifyMaxScale="1" maxScale="0" labelsEnabled="1" simplifyDrawingTol="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" readOnly="0" version="3.18.1-Zürich" minScale="100000000" simplifyAlgorithm="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal endExpression="" durationUnit="min" enabled="0" startExpression="" startField="" endField="" durationField="" fixedDuration="0" mode="0" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer">
    <rules key="{62ad0bbc-18a6-448f-8bdc-46dd056dfec5}">
      <rule symbol="0" label="normal" key="{96ae2d5b-de22-4863-99a6-1452e0c50bf5}" filter="lower(&quot;line_type&quot;) + ', ' + lower(to_string(&quot;overlapping&quot;)) = 'normal, false'"/>
      <rule symbol="1" label="overlapping" key="{3168a973-34a1-4d92-934f-2d5ebd548e39}" filter="lower(to_string(&quot;overlapping&quot;)) = 'true'" checkstate="0"/>
      <rule symbol="2" label="traverse" key="{79d77b31-cedf-4a37-b3d4-a404f01fd7de}" filter="ELSE"/>
    </rules>
    <symbols>
      <symbol name="0" force_rhr="0" alpha="1" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="81,91,206,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.66" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="0" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
          <prop k="line_color" v="81,91,206,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.66"/>
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" alpha="1" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="1,243,255,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="1.66" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="0" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
          <prop k="line_color" v="1,243,255,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="1.66"/>
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
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" alpha="1" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" class="SimpleLine" enabled="1" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="round" type="QString"/>
            <Option name="customdash" value="0.66;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MM" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="round" type="QString"/>
            <Option name="line_color" value="219,30,42,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.46" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="round"/>
          <prop k="customdash" v="0.66;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="round"/>
          <prop k="line_color" v="219,30,42,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.46"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="tweak_dash_pattern_on_corners" v="0"/>
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style allowHtml="0" useSubstitutions="0" multilineHeight="1" capitalization="0" fontLetterSpacing="0" textOpacity="1" textOrientation="horizontal" fontItalic="0" fontSize="10" fontUnderline="0" namedStyle="Regular" fontStrikeout="0" fontWordSpacing="0" previewBkgrdColor="255,255,255,255" fontWeight="50" blendMode="0" fontSizeUnit="Point" textColor="0,0,0,255" fontKerning="1" fontFamily=".AppleSystemUIFont" isExpression="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fieldName="&quot;name&quot; + &#xa;'\nD: ' + to_string(&quot;distance&quot;) + &#xa;'\nDf: ' + to_string(&quot;distance_feet&quot;) + &#xa;'\nDl: ' + to_string(round(&quot;distance_links&quot;, 1)) + '\nB: ' + to_string(&quot;hp_bearing&quot;)">
        <text-buffer bufferColor="255,255,255,255" bufferJoinStyle="128" bufferDraw="0" bufferSize="1" bufferNoFill="1" bufferOpacity="1" bufferBlendMode="0" bufferSizeUnits="MM" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <text-mask maskType="0" maskEnabled="0" maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskedSymbolLayers="" maskSizeUnits="MM" maskOpacity="1"/>
        <background shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeType="0" shapeRotation="0" shapeBorderWidthUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeSizeType="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBlendMode="0" shapeSizeUnit="MM" shapeRadiiY="0" shapeOpacity="1" shapeOffsetY="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeBorderWidth="0" shapeJoinStyle="64" shapeSizeX="0">
          <symbol name="markerSymbol" force_rhr="0" alpha="1" clip_to_extent="1" type="marker">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" class="SimpleMarker" enabled="1" pass="0">
              <Option type="Map">
                <Option name="angle" value="0" type="QString"/>
                <Option name="color" value="213,180,60,255" type="QString"/>
                <Option name="horizontal_anchor_point" value="1" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="name" value="circle" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="outline_color" value="35,35,35,255" type="QString"/>
                <Option name="outline_style" value="solid" type="QString"/>
                <Option name="outline_width" value="0" type="QString"/>
                <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="outline_width_unit" value="MM" type="QString"/>
                <Option name="scale_method" value="diameter" type="QString"/>
                <Option name="size" value="2" type="QString"/>
                <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="size_unit" value="MM" type="QString"/>
                <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowScale="100" shadowOffsetUnit="MM" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowUnder="0" shadowOffsetDist="1" shadowColor="0,0,0,255" shadowOpacity="0.69999999999999996"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" autoWrapLength="0" addDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" wrapChar="" formatNumbers="0" multilineAlign="0" leftDirectionSymbol="&lt;"/>
      <placement quadOffset="4" xOffset="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" dist="0" maxCurvedCharAngleIn="25" rotationAngle="0" overrunDistanceUnit="MM" overrunDistance="0" lineAnchorType="0" maxCurvedCharAngleOut="-25" priority="5" distMapUnitScale="3x:0,0,0,0,0,0" polygonPlacementFlags="2" geometryGeneratorType="PointGeometry" offsetUnits="MM" placement="2" repeatDistanceUnits="MM" fitInPolygonOnly="0" offsetType="0" lineAnchorPercent="0.5" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" layerType="LineGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" geometryGenerator="" centroidInside="0" geometryGeneratorEnabled="0" yOffset="0" centroidWhole="0" preserveRotation="1"/>
      <rendering drawLabels="1" obstacle="1" upsidedownLabels="0" maxNumLabels="2000" mergeLines="0" fontLimitPixelSize="0" displayAll="0" minFeatureSize="0" obstacleType="0" scaleMax="0" zIndex="0" limitNumLabels="0" fontMinPixelSize="3" labelPerPart="0" scaleMin="0" scaleVisibility="0" obstacleFactor="1" fontMaxPixelSize="10000"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" value="" type="QString"/>
          <Option name="properties"/>
          <Option name="type" value="collection" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
          <Option name="drawToAllParts" value="false" type="bool"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
          <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
          <Option name="minLength" value="0" type="double"/>
          <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="minLengthUnit" value="MM" type="QString"/>
          <Option name="offsetFromAnchor" value="0" type="double"/>
          <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
          <Option name="offsetFromLabel" value="0" type="double"/>
          <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
        </Option>
      </callout>
    </settings>
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
    <DiagramCategory height="15" penColor="#000000" showAxis="0" sizeScale="3x:0,0,0,0,0,0" sizeType="MM" penWidth="0" spacingUnit="MM" spacingUnitScale="3x:0,0,0,0,0,0" rotationOffset="270" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" penAlpha="255" lineSizeType="MM" barWidth="5" spacing="0" scaleDependency="Area" minimumSize="0" backgroundAlpha="255" labelPlacementMethod="XHeight" opacity="1" maxScaleDenominator="1e+08" diagramOrientation="Up" direction="1" backgroundColor="#ffffff" enabled="0" width="15" minScaleDenominator="0">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" color="#000000" field=""/>
      <axisSymbol>
        <symbol name="" force_rhr="0" alpha="1" clip_to_extent="1" type="line">
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <layer locked="0" class="SimpleLine" enabled="1" pass="0">
            <Option type="Map">
              <Option name="align_dash_pattern" value="0" type="QString"/>
              <Option name="capstyle" value="square" type="QString"/>
              <Option name="customdash" value="5;2" type="QString"/>
              <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="customdash_unit" value="MM" type="QString"/>
              <Option name="dash_pattern_offset" value="0" type="QString"/>
              <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
              <Option name="draw_inside_polygon" value="0" type="QString"/>
              <Option name="joinstyle" value="bevel" type="QString"/>
              <Option name="line_color" value="35,35,35,255" type="QString"/>
              <Option name="line_style" value="solid" type="QString"/>
              <Option name="line_width" value="0.26" type="QString"/>
              <Option name="line_width_unit" value="MM" type="QString"/>
              <Option name="offset" value="0" type="QString"/>
              <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offset_unit" value="MM" type="QString"/>
              <Option name="ring_filter" value="0" type="QString"/>
              <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
              <Option name="use_custom_dash" value="0" type="QString"/>
              <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
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
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" obstacle="0" placement="2" priority="0" showAll="1" zIndex="0" dist="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
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
    <alias name="" field="key" index="0"/>
    <alias name="" field="ob_name" index="1"/>
    <alias name="" field="is_arc" index="2"/>
    <alias name="" field="reversed" index="3"/>
    <alias name="" field="crs" index="4"/>
    <alias name="" field="likely_candidate" index="5"/>
    <alias name="" field="overlapping" index="6"/>
    <alias name="" field="name" index="7"/>
    <alias name="" field="distance" index="8"/>
    <alias name="" field="hp_bearing" index="9"/>
    <alias name="" field="dd_bearing" index="10"/>
    <alias name="" field="distance_std" index="11"/>
    <alias name="" field="bearing_std" index="12"/>
    <alias name="" field="setup_point" index="13"/>
    <alias name="" field="target_point" index="14"/>
    <alias name="" field="line_type" index="15"/>
    <alias name="" field="distance_type" index="16"/>
    <alias name="" field="azimuth_type" index="17"/>
    <alias name="" field="az_adopt_fact" index="18"/>
    <alias name="" field="is_nb" index="19"/>
    <alias name="" field="distance_feet" index="20"/>
    <alias name="" field="distance_links" index="21"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="key"/>
    <default applyOnUpdate="0" expression="" field="ob_name"/>
    <default applyOnUpdate="0" expression="" field="is_arc"/>
    <default applyOnUpdate="0" expression="" field="reversed"/>
    <default applyOnUpdate="0" expression="" field="crs"/>
    <default applyOnUpdate="0" expression="" field="likely_candidate"/>
    <default applyOnUpdate="0" expression="" field="overlapping"/>
    <default applyOnUpdate="0" expression="" field="name"/>
    <default applyOnUpdate="0" expression="" field="distance"/>
    <default applyOnUpdate="0" expression="" field="hp_bearing"/>
    <default applyOnUpdate="0" expression="" field="dd_bearing"/>
    <default applyOnUpdate="0" expression="" field="distance_std"/>
    <default applyOnUpdate="0" expression="" field="bearing_std"/>
    <default applyOnUpdate="0" expression="" field="setup_point"/>
    <default applyOnUpdate="0" expression="" field="target_point"/>
    <default applyOnUpdate="0" expression="" field="line_type"/>
    <default applyOnUpdate="0" expression="" field="distance_type"/>
    <default applyOnUpdate="0" expression="" field="azimuth_type"/>
    <default applyOnUpdate="0" expression="" field="az_adopt_fact"/>
    <default applyOnUpdate="0" expression="" field="is_nb"/>
    <default applyOnUpdate="0" expression="" field="distance_feet"/>
    <default applyOnUpdate="0" expression="" field="distance_links"/>
  </defaults>
  <constraints>
    <constraint constraints="0" notnull_strength="0" field="key" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="ob_name" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="is_arc" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="reversed" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="crs" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="likely_candidate" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="overlapping" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="name" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="distance" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="hp_bearing" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="dd_bearing" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="distance_std" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bearing_std" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="setup_point" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="target_point" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="line_type" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="distance_type" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="azimuth_type" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="az_adopt_fact" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="is_nb" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="distance_feet" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="distance_links" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="key" exp=""/>
    <constraint desc="" field="ob_name" exp=""/>
    <constraint desc="" field="is_arc" exp=""/>
    <constraint desc="" field="reversed" exp=""/>
    <constraint desc="" field="crs" exp=""/>
    <constraint desc="" field="likely_candidate" exp=""/>
    <constraint desc="" field="overlapping" exp=""/>
    <constraint desc="" field="name" exp=""/>
    <constraint desc="" field="distance" exp=""/>
    <constraint desc="" field="hp_bearing" exp=""/>
    <constraint desc="" field="dd_bearing" exp=""/>
    <constraint desc="" field="distance_std" exp=""/>
    <constraint desc="" field="bearing_std" exp=""/>
    <constraint desc="" field="setup_point" exp=""/>
    <constraint desc="" field="target_point" exp=""/>
    <constraint desc="" field="line_type" exp=""/>
    <constraint desc="" field="distance_type" exp=""/>
    <constraint desc="" field="azimuth_type" exp=""/>
    <constraint desc="" field="az_adopt_fact" exp=""/>
    <constraint desc="" field="is_nb" exp=""/>
    <constraint desc="" field="distance_feet" exp=""/>
    <constraint desc="" field="distance_links" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column name="key" width="-1" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column name="overlapping" width="-1" hidden="0" type="field"/>
      <column name="ob_name" width="-1" hidden="0" type="field"/>
      <column name="is_arc" width="-1" hidden="0" type="field"/>
      <column name="reversed" width="-1" hidden="0" type="field"/>
      <column name="crs" width="-1" hidden="0" type="field"/>
      <column name="likely_candidate" width="-1" hidden="0" type="field"/>
      <column name="name" width="-1" hidden="0" type="field"/>
      <column name="distance" width="-1" hidden="0" type="field"/>
      <column name="hp_bearing" width="-1" hidden="0" type="field"/>
      <column name="dd_bearing" width="-1" hidden="0" type="field"/>
      <column name="distance_std" width="-1" hidden="0" type="field"/>
      <column name="bearing_std" width="-1" hidden="0" type="field"/>
      <column name="setup_point" width="-1" hidden="0" type="field"/>
      <column name="target_point" width="-1" hidden="0" type="field"/>
      <column name="line_type" width="-1" hidden="0" type="field"/>
      <column name="distance_type" width="-1" hidden="0" type="field"/>
      <column name="azimuth_type" width="-1" hidden="0" type="field"/>
      <column name="az_adopt_fact" width="-1" hidden="0" type="field"/>
      <column name="is_nb" width="-1" hidden="0" type="field"/>
      <column name="distance_feet" width="-1" hidden="0" type="field"/>
      <column name="distance_links" width="-1" hidden="0" type="field"/>
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
