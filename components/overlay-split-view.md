# AdwOverlaySplitView (Sidebar)

```xml
<object class="AdwOverlaySplitView" id="split_view">
  <property name="sidebar-position">end</property>
  <property name="show-sidebar">false</property>
  <property name="min-sidebar-width">350</property>
  <property name="content">
    <!-- main content -->
  </property>
  <property name="sidebar">
    <!-- sidebar panel -->
  </property>
</object>
```

**Toggle via button**:
```xml
<object class="GtkToggleButton" id="properties_button">
  <property name="active" bind-source="split_view" 
            bind-property="show-sidebar" 
            bind-flags="bidirectional|sync-create"/>
</object>
```
