# GtkCenterBox

Three-region layout (start, center, end):

```xml
<object class="GtkCenterBox">
  <child type="start">
    <object class="GtkLabel" id="modified_indicator">
      <property name="label">•</property>
    </object>
  </child>
  <child type="center">
    <object class="GtkLabel" id="title">
      <property name="ellipsize">middle</property>
      <style><class name="title"/></style>
    </object>
  </child>
  <child type="end">
    <object class="GtkImage" id="indicator"/>
  </child>
</object>
```
