# Skill: Wizard / Setup Assistant

## Goal: Build a sequential setup flow with Back/Forward navigation.

Pattern extracted from gnome-initial-setup.

## Architecture

```
GtkBox (vertical)
├── GtkHeaderBar (no title buttons)
│   ├── [start] Cancel, Back buttons
│   ├── [center] GtkLabel (bold title, changes per page)
│   └── [end] Skip, Forward (suggested-action) buttons
└── GtkStack (slide-left-right transition)
    ├── Page 1
    ├── Page 2
    └── ...
```

## Page Header (GisPageHeader pattern)

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

**Key spacing**: icon↔title: `18`, title↔subtitle: `6`, max-width-chars: `65`.

## Navigation Bar

```xml
<object class="GtkHeaderBar" id="titlebar">
  <property name="show-title-buttons">False</property>
  <child type="title">
    <object class="GtkLabel" id="title">
      <attributes><attribute name="weight" value="bold"/></attributes>
    </object>
  </child>
  <!-- Buttons: Cancel, Back, Skip, Forward -->
</object>
```

## Button Size Group (consistent width)
```xml
<object class="GtkSizeGroup">
  <property name="mode">horizontal</property>
  <widgets>
    <widget name="back"/>
    <widget name="cancel"/>
    <widget name="forward"/>
    <widget name="skip"/>
  </widgets>
</object>
```

## Page Transitions
```xml
<object class="GtkStack" id="stack">
  <property name="transition-type">slide-left-right</property>
</object>
```

## Welcome Page (first page)

```xml
<object class="AdwStatusPage" id="status_page">
  <property name="description" translatable="yes">Setup will guide you through making an account.</property>
  <child>
    <object class="GtkButton">
      <property name="label" translatable="yes">_Start Setup</property>
      <property name="use-underline">1</property>
      <style>
        <class name="suggested-action"/>
        <class name="pill"/>
      </style>
    </object>
  </child>
</object>
```

## Rules
- Forward button always `suggested-action`
- Back button disabled on first page
- Skip button: optional, hidden when not applicable
- Transitions: `slide-left-right` (forward=left, back=right, per platform convention)
- Headings: `title-1` (appropriate for wizard — lots of whitespace)
- All navigation buttons: `use-underline: true`

## Real App Reference
- gnome-initial-setup/gnome-initial-setup/gis-assistant.ui
- gnome-initial-setup/gnome-initial-setup/gis-page-header.ui
- gnome-initial-setup/gnome-initial-setup/pages/privacy/gis-privacy-page.ui
- gnome-initial-setup/gnome-initial-setup/pages/welcome/gis-welcome-page.ui
