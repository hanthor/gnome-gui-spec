# GtkWindowHandle

**Draggable handle for floating/movable windows.**

```xml
<object class="AdwWindow">
  <property name="child">
    <object class="AdwToolbarView">
      <child type="top">
        <object class="GtkWindowHandle">
          <object class="AdwHeaderBar">...</object>
        </object>
      </child>
      <property name="content">...</property>
    </object>
  </property>
</object>
```

**Real usage**: `sources/sysprof/src/sysprof/sysprof-recording-pad.ui:12` — Sysprof's floating recording pad uses `GtkWindowHandle` for drag-to-move.
