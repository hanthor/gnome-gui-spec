# GtkListHeader (Section Headers in ListView)

**Sticky section headers inside a GtkListView.**

```xml
<object class="GtkBuilderListItemFactory">
  <property name="bytes"><![CDATA[
    <interface>
      <template class="GtkListHeader">
        <property name="child">
          <object class="GtkLabel">
            <binding name="label">
              <closure type="gchararray" function="get_header_text">
                <lookup name="item" type="MyItem">header_item</lookup>
              </closure>
            </binding>
            <style>
              <class name="title"/>
            </style>
          </object>
        </property>
      </template>
    </interface>
  ]]></property>
</object>
```

**Wire to ListView**:
```xml
<object class="GtkListView">
  <property name="factory">item_factory</property>
  <property name="header-factory">header_factory</property>
</object>
```

**Real usage**: `sources/dspy/src/dspy-window.ui:567-584` — D-Spy groups members by category (Properties, Signals, Methods).
