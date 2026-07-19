# AdwBottomSheet (Mobile sidebar)

```xml
<object class="AdwBottomSheet">
  <property name="open" bind-source="properties_button" bind-property="active" 
            bind-flags="bidirectional|sync-create"/>
  <property name="content">
    <!-- main content -->
  </property>
  <property name="sheet">
    <!-- sidebar content (appears as bottom sheet on narrow) -->
  </property>
</object>
```

**Use**: Narrow-screen alternative to `AdwOverlaySplitView`.
