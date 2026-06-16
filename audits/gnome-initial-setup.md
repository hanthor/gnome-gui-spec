# GNOME Initial Setup — GUI Audit

**Framework**: C + GTK 3/4 (hybrid) + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.InitialSetup

## Architecture
- **Wizard/Assistant** pattern — sequential pages with Back/Forward navigation
- `GisAssistant` (GtkBox) > `GtkStack` with `slide-left-right` transition
- Each page extends `GisPage` base class
- Navigation buttons in header bar: Cancel, Back, Forward (suggested-action), Skip

## Key Patterns

### Assistant Header Bar
```xml
<object class="GtkHeaderBar" id="titlebar">
  <property name="show-title-buttons">False</property>
  <child type="title">
    <object class="GtkLabel" id="title">
      <attributes><attribute name="weight" value="bold"/></attributes>
    </object>
  </child>
  <!-- Cancel, Back, Skip, Forward (suggested-action) buttons -->
</object>
```
Uses `GtkSizeGroup` for consistent navigation button widths.

### Page Header (`GisPageHeader`)
```xml
<object class="GisPageHeader">
  <property name="spacing">18</property>
  <object class="GtkImage" id="icon">
    <property name="pixel_size">96</property>
    <style><class name="dim-label"/></style>
  </object>
  <object class="GtkLabel" id="title">
    <property name="justify">center</property>
    <property name="max_width_chars">65</property>
    <property name="wrap">True</property>
    <style><class name="title-1"/></style>
  </object>
  <object class="GtkLabel" id="subtitle">
    <property name="justify">center</property>
    <property name="max_width_chars">65</property>
    <property name="wrap">True</property>
  </object>
</object>
```

### Privacy/Settings Page (AdwPreferencesPage)
Uses `AdwPreferencesPage` + `AdwPreferencesGroup` with:
- `AdwActionRow` + `GtkSwitch` in suffix (NOT AdwSwitchRow — older GTK3 pattern)
- `GtkLabel` with `caption` class for explanation text
- `accessible-role="group"` and `<accessibility><relation name="labelled-by">header</relation>`

### Welcome Page
Uses `AdwStatusPage` with:
- Full-width SVG header image
- Description text
- `suggested-action` + `pill` "Start Setup" button (with `use-underline`!)

## Spacing
| Value | Where |
|-------|-------|
| `18` | PageHeader icon↔title spacing |
| `6` | PageHeader title↔subtitle spacing |
| `12` | Content margin, group margin-top |
| `24` | Page header margin-top on privacy page |
| `18` | Footer label margin-bottom |
| `0` | Welcome page margins (full-bleed) |

## Accessibility
- `accessible-role="group"` on PreferencesGroup
- `<accessibility><relation name="labelled-by">header</relation>`
- `use-underline` on navigation buttons and welcome CTA

## Notable
- **Correct use of `title-1`**: Appropriate for wizard context (lots of whitespace, display heading)
- Smart `bind-source` for small-screen adaptation (hides icon on narrow screens)
- `max_width_chars: 65` on page titles — prevents overly wide text
- Privacy page footer: "Privacy controls can be changed at any time from the Settings app."
- Uses old `GtkHeaderBar` + `GtkStack` (not modern `Adw` equivalents)
