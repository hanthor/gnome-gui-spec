# GtkPopover

```xml
<object class="GtkMenuButton">
  <property name="icon-name">info-symbolic</property>
  <property name="popover">
    <object class="GtkPopover">
      <property name="child">
        <object class="GtkLabel">
          <property name="label" translatable="yes">Explanation text...</property>
          <property name="wrap">True</property>
          <property name="max-width-chars">50</property>
          <property name="margin-start">6</property>
          <property name="margin-end">6</property>
          <property name="margin-top">6</property>
          <property name="margin-bottom">6</property>
        </object>
      </property>
    </object>
  </property>
</object>
```
