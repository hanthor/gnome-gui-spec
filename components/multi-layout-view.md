# AdwMultiLayoutView + AdwLayout + AdwLayoutSlot

**Adaptive container that swaps entirely different layouts based on breakpoints.**

```xml
<object class="AdwMultiLayoutView" id="multi_layout">
  <child>
    <object class="AdwLayout">
      <property name="name">wide</property>
      <child>
        <object class="AdwLayoutSlot">
          <property name="id">statusbar</property>
          <object class="PanelStatusbar">...</object>
        </object>
      </child>
      <child>
        <object class="AdwLayoutSlot">
          <property name="id">stack</property>
          <object class="AdwTabView" id="tabs">...</object>
        </object>
      </child>
    </object>
  </child>
  <child>
    <object class="AdwLayout">
      <property name="name">narrow</property>
      <child>
        <object class="AdwLayoutSlot">
          <property name="id">sidebar_contents</property>
          <object class="AdwNavigationSplitView">...</object>
        </object>
      </child>
    </object>
  </child>
</object>
```

**Use with AdwBreakpoint**:
```xml
<object class="AdwBreakpoint">
  <condition>max-width: 600sp</condition>
  <setter object="multi_layout" property="layout-name">narrow</setter>
</object>
```

**Real usage**: `sources/manuals/src/manuals-window.ui:63-400` — Manuals swaps between a PanelDock-based wide layout and an AdwNavigationSplitView-based narrow layout at 600sp.
