# GNOME Software — GUI Audit

**Framework**: C + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.Software

## Architecture
- Complex content-browsing app (app store)
- Multiple pages: overview, category, details, installed, updates, extras
- Carousel + tiles for featured content
- Extensive dialog usage for contextual information

## Key Patterns

### Preferences Dialog
```xml
<object class="GsPrefsDialog" parent="AdwPreferencesDialog">
  <property name="content-width">610</property>
  ...
</object>
```

### Header Suffix with Info Button
```xml
<object class="AdwPreferencesGroup">
  <property name="header-suffix">
    <object class="GtkMenuButton" id="updates_info_button">
      <property name="tooltip-text">More Information</property>
      <property name="icon-name">info-symbolic</property>
      <property name="popover">
        <object class="GtkPopover">
          <property name="child">
            <object class="GtkLabel">
              <property name="label">Explanation text...</property>
              <property name="wrap">True</property>
              <property name="max-width-chars">50</property>
            </object>
          </property>
        </object>
      </property>
      <style><class name="flat"/></style>
    </object>
  </property>
  <!-- ActionRows with CheckButton radio groups -->
</object>
```

### Radio Group Pattern (GSettings-backed)
```xml
<object class="AdwActionRow">
  <property name="title">_Automatic</property>
  <property name="subtitle">Automatically check for and download updates</property>
  <property name="activatable-widget">automatic_updates_radio</property>
  <child type="prefix">
    <object class="GtkCheckButton" id="automatic_updates_radio">
      <property name="valign">center</property>
      <property name="active">True</property>
    </object>
  </child>
</object>
<object class="AdwActionRow">
  <property name="title">_Manual</property>
  <child type="prefix">
    <object class="GtkCheckButton" id="manual_updates_radio">
      <property name="group">automatic_updates_radio</property>
    </object>
  </child>
</object>
```

### Content Pages
- `GsOverviewPage`: Featured carousel + category tiles + recommended apps
- `GsCategoryPage`: Apps filtered by category
- `GsDetailsPage`: Single app with description, screenshots, reviews, metadata
- `GsInstalledPage`: List of installed apps
- `GsOsUpdatePage`: System update view
- `GsExtrasPage`: Codecs, drivers, additional packages

### Widgets
- `GsFeaturedCarousel`: Horizontal scrolling featured app display
- `GsFeatureTile`: Small tile with icon + label
- `GsAppRow`: List row for app items
- `GsAppAddonRow`: Row for app add-ons
- `GsLicenseTile`: License info display
- `GsAppContextBar`: Context banner (permissions, safety, age rating)

## Notable
- `content-width: 610` on PreferencesDialog for wider content
- Uses `GtkPopover` for info explanations (not just tooltips)
- Extensive use of custom widget classes for app-specific UI
- `.flat` style on info menu buttons
- Dialog-based sub-views for reviews, translations, version history
