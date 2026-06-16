# GNOME Image Viewer (Loupe) — GUI Audit

**Framework**: Rust (gtk4-rs) + GTK 4 + libadwaita  
**UI Format**: GtkBuilder XML (.ui)  
**ID**: org.gnome.Loupe

## Architecture
- `LpWindow` (AdwApplicationWindow) with `AdwViewStack` as content
- Dark theme by default (media app)
- Two views in stack: ImageWindow (main) and Edit Window

## Key Patterns

### Adaptive Layout
```xml
<object class="AdwBreakpoint">
  <condition>min-width: 590sp</condition>
  <setter object="LpWindow" property="layout-name">wide</setter>
  <setter object="LpWindow" property="narrow-layout">false</setter>
</object>
<object class="AdwBreakpoint">
  <condition>max-width: 590sp</condition>
  <setter object="LpWindow" property="layout-name">narrow</setter>
  <setter object="LpWindow" property="narrow-layout">true</setter>
</object>
```

### Fullscreen Pattern
- `LpShyBin` widget: Auto-hides header bar in fullscreen mode
- `show-start-title-buttons` / `show-end-title-buttons` bound to `not-fullscreened`
- Header bar slides away when fullscreen, appears on mouse move

### Toast Overlay
```xml
<object class="AdwToastOverlay" id="toast_overlay">
  <property name="child">
    <object class="AdwViewStack" id="stack">
      <property name="enable-transitions">true</property>
      ...
    </object>
  </property>
</object>
```

## Menu Model
- Standard sections + custom inline buttons:
```xml
<section>
  <attribute name="display-hint">inline-buttons</attribute>
  <item><attribute name="custom">rotate-left</attribute></item>
  <item><attribute name="custom">rotate-right</attribute></item>
</section>
```
- Menu sections: New/Open, Open With/Print, Rotate (inline), Set Background/Delete, Help/Shortcuts/About

## Views
- **Image view**: AdwToolbarView with shy header bar
- **Edit view (crop)**: Separate widget loaded into AdwBin
- **Properties**: Sidebar overlay with metadata
- **Drag overlay**: Full-window drop target

## Dark Theme
```rust
// Loupe defaults to dark theme as a media viewer
adw_style_manager_set_color_scheme (manager, ADW_COLOR_SCHEME_PREFER_DARK);
```

## Notable
- Rust + gtk4-rs implementation (rare among GNOME core apps)
- `AdwViewStack.enable-transitions: true` for smooth view switching
- Custom `LpShyBin` for auto-hiding chrome in fullscreen
- `invert-boolean` binding flag for `not-fullscreened` property
