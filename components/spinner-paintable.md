# AdwSpinnerPaintable

**A paintable spinner that can be embedded inside AdwStatusPage as an icon.**

```xml
<object class="AdwStatusPage">
  <property name="title" translatable="yes">Loading…</property>
  <property name="icon-name">content-loading-symbolic</property>
  <property name="child">
    <object class="AdwSpinnerPaintable"/>
  </property>
</object>
```

**Real usage**: `sources/manuals/src/manuals-window.ui:81-83` — loading state in Manuals.
