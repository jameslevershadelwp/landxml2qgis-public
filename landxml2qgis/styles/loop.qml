<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" labelsEnabled="0" version="3.14.15-Pi" maxScale="0" simplifyMaxScale="1" simplifyAlgorithm="0" simplifyDrawingHints="1" readOnly="0" simplifyDrawingTol="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" simplifyLocal="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal endField="" durationField="" mode="0" accumulate="0" fixedDuration="0" startExpression="" durationUnit="min" startField="" enabled="0" endExpression="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" enableorderby="0" type="RuleRenderer" forceraster="0">
    <rules key="{2f140831-7df1-4197-b007-f5344d92ca79}">
      <rule symbol="0" label="Likely" filter=" &quot;likely&quot; is True" key="{453ad0ec-415f-420c-b3c6-ccf4ef5db4fc}"/>
      <rule symbol="1" label="Loop" filter=" &quot;likely&quot; is False" key="{8a2b5a7c-d4d4-4578-8a20-b56fe5533a6e}"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="line" alpha="1" force_rhr="0" name="0">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="round" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="232,0,221,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="1.46" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
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
      <symbol clip_to_extent="1" type="line" alpha="1" force_rhr="0" name="1">
        <layer class="SimpleLine" pass="0" locked="0" enabled="1">
          <prop v="round" k="capstyle"/>
          <prop v="0.66;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="26,255,1,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.86" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
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
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory penColor="#000000" penWidth="0" minScaleDenominator="0" width="15" backgroundColor="#ffffff" spacingUnitScale="3x:0,0,0,0,0,0" scaleDependency="Area" minimumSize="0" spacing="5" opacity="1" labelPlacementMethod="XHeight" height="15" lineSizeType="MM" rotationOffset="270" backgroundAlpha="255" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" direction="0" diagramOrientation="Up" spacingUnit="MM" enabled="0" barWidth="5" sizeType="MM" showAxis="1" penAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0">
      <fontProperties style="" description=".AppleSystemUIFont,13,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol clip_to_extent="1" type="line" alpha="1" force_rhr="0" name="">
          <layer class="SimpleLine" pass="0" locked="0" enabled="1">
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
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
  <DiagramLayerSettings placement="2" priority="0" linePlacementFlags="18" zIndex="0" showAll="1" obstacle="0" dist="0">
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
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="key">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="angles_in_misclose">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="diagram">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geometry">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="likely">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="loop_misclose">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="loop_number">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="key" index="0" name=""/>
    <alias field="angles_in_misclose" index="1" name=""/>
    <alias field="diagram" index="2" name=""/>
    <alias field="geometry" index="3" name=""/>
    <alias field="likely" index="4" name=""/>
    <alias field="loop_misclose" index="5" name=""/>
    <alias field="loop_number" index="6" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="key" applyOnUpdate="0"/>
    <default expression="" field="angles_in_misclose" applyOnUpdate="0"/>
    <default expression="" field="diagram" applyOnUpdate="0"/>
    <default expression="" field="geometry" applyOnUpdate="0"/>
    <default expression="" field="likely" applyOnUpdate="0"/>
    <default expression="" field="loop_misclose" applyOnUpdate="0"/>
    <default expression="" field="loop_number" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="key" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="angles_in_misclose" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="diagram" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="geometry" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="likely" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="loop_misclose" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
    <constraint field="loop_number" unique_strength="0" notnull_strength="0" constraints="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="key" desc=""/>
    <constraint exp="" field="angles_in_misclose" desc=""/>
    <constraint exp="" field="diagram" desc=""/>
    <constraint exp="" field="geometry" desc=""/>
    <constraint exp="" field="likely" desc=""/>
    <constraint exp="" field="loop_misclose" desc=""/>
    <constraint exp="" field="loop_number" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column hidden="0" type="field" width="-1" name="key"/>
      <column hidden="0" type="field" width="-1" name="angles_in_misclose"/>
      <column hidden="0" type="field" width="-1" name="diagram"/>
      <column hidden="0" type="field" width="-1" name="geometry"/>
      <column hidden="0" type="field" width="-1" name="likely"/>
      <column hidden="0" type="field" width="-1" name="loop_misclose"/>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" width="-1" name="loop_number"/>
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
    <field editable="1" name="@azimuth"/>
    <field editable="1" name="@azimuthAdoptionFactor"/>
    <field editable="1" name="@azimuthType"/>
    <field editable="1" name="@desc"/>
    <field editable="1" name="@distanceType"/>
    <field editable="1" name="@horizDistance"/>
    <field editable="1" name="@name"/>
    <field editable="1" name="@purpose"/>
    <field editable="1" name="@setupID"/>
    <field editable="1" name="@targetSetupID"/>
    <field editable="1" name="angles_in_misclose"/>
    <field editable="1" name="diagram"/>
    <field editable="1" name="geometry"/>
    <field editable="1" name="key"/>
    <field editable="1" name="likely"/>
    <field editable="1" name="loop_misclose"/>
    <field editable="1" name="loop_number"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="@azimuth"/>
    <field labelOnTop="0" name="@azimuthAdoptionFactor"/>
    <field labelOnTop="0" name="@azimuthType"/>
    <field labelOnTop="0" name="@desc"/>
    <field labelOnTop="0" name="@distanceType"/>
    <field labelOnTop="0" name="@horizDistance"/>
    <field labelOnTop="0" name="@name"/>
    <field labelOnTop="0" name="@purpose"/>
    <field labelOnTop="0" name="@setupID"/>
    <field labelOnTop="0" name="@targetSetupID"/>
    <field labelOnTop="0" name="angles_in_misclose"/>
    <field labelOnTop="0" name="diagram"/>
    <field labelOnTop="0" name="geometry"/>
    <field labelOnTop="0" name="key"/>
    <field labelOnTop="0" name="likely"/>
    <field labelOnTop="0" name="loop_misclose"/>
    <field labelOnTop="0" name="loop_number"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"@name"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
