# GNOME Weather — GUI Audit

**Framework**: JavaScript (GJS) + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.Weather

## Architecture
- `Gjs_MainWindow` (AdwApplicationWindow)
- `GtkStack` with crossfade transitions for view switching (search → city view)
- No ViewSwitcher — single content view with popover-based location selection

## Key Patterns

### Empty State (Search View)
```xml
<object class="AdwStatusPage" id="searchViewStatus">
  <property name="title">Welcome to Weather!</property>
  <property name="description">To get started, select a location.</property>
  <child>
    <object class="GtkMenuButton">
      <property name="label">Search for a city or country</property>
    </object>
  </child>
</object>
```

### City View
- `AdwToolbarView` with `AdwHeaderBar`
- `centering_policy: strict` on header bar
- `GtkRevealer` with `crossfade` transition for refresh button animation
- Start: refresh button (GtkButton with `view-refresh-symbolic`)
- Title: city name
- End: hamburger menu with temperature unit + About

### Location Popover
- `GtkMenuButton` → `GtkPopover` with search and location list
- Popover contains search entry + location list

### Menu Model
```xml
<menu id="primary-menu">
  <section>
    <attribute name="label">Temperature Unit</attribute>
    <item>
      <attribute name="label">_Celsius</attribute>
      <attribute name="action">app.temperature-unit</attribute>
      <attribute name="target">centigrade</attribute>
    </item>
    <item>
      <attribute name="label">_Fahrenheit</attribute>
      <attribute name="action">app.temperature-unit</attribute>
      <attribute name="target">fahrenheit</attribute>
    </item>
  </section>
  <section>
    <item>
      <attribute name="label">_About Weather</attribute>
      <attribute name="action">win.about</attribute>
    </item>
  </section>
</menu>
```

## Adaptive
- Large default size: `default_width: 1050, default_height: 650`

## Notable
- GJS (GNOME JavaScript) implementation — shows GNOME's JS binding maturity
- `GtkStack.transition_type: crossfade` for smooth view transitions
- `GtkRevealer` for animated widget appearance
- Uses `GtkMenuButton` as primary search trigger (not a search bar)
- No preferences dialog — settings in hamburger menu
