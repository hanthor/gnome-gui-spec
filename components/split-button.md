# AdwSplitButton

**Dropdown button that has a primary action + secondary popover of alternatives.**

```xml
<object class="AdwSplitButton" id="run_button">
  <property name="menu-model">run_menu</property>
  <property name="icon-name">media-playback-start-symbolic</property>
  <property name="tooltip-text" translatable="yes">Run Project</property>
</object>
```

**Real usage**: `sources/builder/src/libide/gui/ide-run-button.ui:6` — Builder's Run button.
