# GtkFilterListModel + GtkStringFilter (Bidirectional)

## GtkFilterListModel + GtkStringFilter (Bidirectional)

**Live search filtering with bidirectional binding between search entry and filter.**

```xml
<object class="GtkSearchEntry">
  <binding name="text">
    <lookup name="search" type="GtkStringFilter">filter</lookup>
  </binding>
</object>

<object class="GtkStringFilter" id="filter">
  <property name="expression">
    <lookup name="name" type="MyItem"/>
  </property>
</object>

<object class="GtkFilterListModel">
  <property name="model">base_model</property>
  <property name="filter">filter</property>
</object>
```

**The `bind-flags="sync-create|bidirectional"` pattern** (from D-Spy):
```xml
<binding name="text">
  <lookup name="search">names_filter</lookup>
  <binding-source="sync-create|bidirectional" />
</binding>
```

**Real usage**: `sources/dspy/src/dspy-window.ui:192` — D-Spy's search bars bind bidirectionally to GtkStringFilter.

## GtkAnyFilter + GtkBoolFilter + GtkEveryFilter

**Boolean compound filters for complex data filtering.**

```xml
<!-- OR filter: matches if ANY child filter matches -->
<object class="GtkAnyFilter">
  <child>
    <object class="GtkStringFilter">
      <property name="expression">
        <lookup name="sender" type="SomeType"/>
      </property>
    </object>
  </child>
  <child>
    <object class="GtkStringFilter">
      <property name="expression">
        <lookup name="destination" type="SomeType"/>
      </property>
    </object>
  </child>
</object>
```

```xml
<!-- AND+invert filter: "installed AND not EOL" -->
<object class="GtkEveryFilter">
  <child>
    <object class="GtkBoolFilter">
      <property name="expression">
        <lookup name="is-installed" type="Bundle"/>
      </property>
    </object>
  </child>
  <child>
    <object class="GtkBoolFilter">
      <property name="expression">
        <lookup name="is-end-of-life" type="Bundle"/>
      </property>
      <property name="invert">true</property>
    </object>
  </child>
</object>
```

**Real usage**: `sources/sysprof/src/sysprof/sysprof-dbus-section.ui:82` (AnyFilter for multi-field D-Bus search), `sources/manuals/src/manuals-bundle-dialog.ui:113-148` (BoolFilter+EveryFilter for installed/available SDK lists).

## GtkFlattenListModel + GtkMapListModel

**Model transformations for nested/grouped data.**

```xml
<!-- Flatten nested list of lists into a single flat list -->
<object class="GtkFlattenListModel">
  <property name="model">counters_model</property>
</object>

<!-- Transform each item via a map function -->
<object class="GtkMapListModel">
  <property name="model">marks_model</property>
</object>
```

**Real usage**: `sources/sysprof/src/sysprof/sysprof-cpu-section.ui:140` (FlattenListModel for counter data), `sources/sysprof/src/sysprof/sysprof-mark-chart.ui:23` (MapListModel for mark chart items).
