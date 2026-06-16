# GNOME GUI Specification & Agent Authoring Guide

> **Compiled from**: GNOME HIG v47 + source audits of 9 GNOME Core apps (Settings, Text Editor, Files, Calculator, Clocks, Weather, Image Viewer, Software, Calendar).
> **Purpose**: Authoritative reference for creating GNOME-compliant GUI applications. Intended for human and AI agent consumption.
> **Version**: 0.2.0

---

## 1. Design Principles (from HIG)

Every GNOME app must embody these four principles:

1. **Design for People** — Accommodate different physical abilities, cultures, and device form factors. Require little specialist knowledge.
2. **Make it Simple** — Do one thing well. Use progressive disclosure. Frequent actions close, infrequent actions further away.
3. **Reduce User Effort** — Automate where possible. Minimize steps. Keep text short and to the point.
4. **Be Considerate** — Anticipate and prevent mistakes. Allow destructive actions to be undone instead of confirming. Don't interrupt unnecessarily.

---

## 2. Window Architecture

### Primary Windows

```
AdwApplicationWindow
├── AdwBreakpoint (adaptive: max-width conditions)
├── GtkShortcutController (keyboard shortcuts)
├── AdwMultiLayoutView / AdwToolbarView
│   ├── [top] AdwHeaderBar
│   │   ├── [start] primary actions (flat buttons)
│   │   ├── [center] AdwWindowTitle / AdwViewSwitcher
│   │   ├── [end] menu buttons, secondary actions
│   ├── [content] main content area
│   └── [bottom] statusbar / AdwViewSwitcherBar
```

**Rules**:
- Primary windows are independent and resizable
- Default size appropriate to content (not too large, not cramped)
- `width-request: 360` minimum (Text Editor uses 360)
- Run full content as content area, not stacked sub-panels

### Secondary Windows

- **Preferences Window**: `AdwPreferencesDialog` with `AdwPreferencesPage` > `AdwPreferencesGroup`
- **About Window**: `AdwAboutDialog` (or `AdwAboutWindow`)
- **Properties Window**: Narrow secondary window (Nautilus uses `width-request: 360, default-width: 480`)
- Modal to parent primary window
- Close via Escape key

---

## 3. Navigation Patterns

Choose ONE primary navigation pattern:

### View Switcher (flat, 3-5 views)
```
AdwViewSwitcher (in header bar, policy: wide)
    → AdwViewStack
        → AdwViewStackPage (title, icon-name)
            → content widget
AdwViewSwitcherBar (revealed at narrow widths)
```

**Use when**: App has 3-5 equal-importance pages (e.g., Mouse/Touchpad/Pointing Stick in Settings).

### Sidebar (many views, dynamic)
```
AdwNavigationSplitView
├── sidebar: AdwNavigationPage list
└── content: AdwNavigationPage
```

**Use when**: More than 5 views, or dynamic locations (e.g., Nautilus places sidebar).

### Tabs (documents)
```
AdwTabView + AdwTabBar
```

**Use when**: App works with multiple documents (Text Editor).

### Stack + Back Navigation
```
AdwNavigationView (push/pop pages)
```

**Use when**: Hierarchical drill-down navigation.

---

## 4. Container Patterns

### 4.1 Preferences Pages (the #1 pattern)

This is the most important pattern in GNOME. Every app's settings use it.

```xml
<!-- Blueprint format -->
Adw.PreferencesPage {
  Adw.PreferencesGroup {
    title: _("Section Title");
    description: _("Optional description text");  <!-- optional -->

    Adw.SwitchRow {
      title: _("Setting Name");
      use-underline: true;
    }

    Adw.ActionRow {
      title: _("Setting Name");
      subtitle: _("Description");
      activatable-widget: control_id;
      use-underline: true;
      [suffix] Switch control_id { valign: center; }
    }

    Adw.ComboRow {
      title: _("Setting Name");
      use-underline: true;
      model: combo_model;
    }

    Adw.SpinRow {
      title: _("Setting Name");
      use-underline: true;
      adjustment: Gtk.Adjustment { lower: 1; upper: 32; step-increment: 1; };
    }

    Adw.ButtonRow {
      title: _("Action Name");
      end-icon-name: "go-next-symbolic";
      use-underline: true;
      activated => $callback(template);
    }
  }
}
```

**Row types** (in order of preference):
| Widget | Purpose | Icon/Indicator |
|--------|---------|----------------|
| `AdwSwitchRow` | Binary on/off setting | Switch at end |
| `AdwActionRow` + widget | Setting with custom control | Widget in `[suffix]` |
| `AdwComboRow` | Single-select from list | Dropdown arrow |
| `AdwSpinRow` | Numeric value | Spin buttons |
| `AdwButtonRow` | Navigate/trigger action | `go-next-symbolic` arrow |
| `AdwExpanderRow` | Reveal additional settings | Expander arrow + optional `[action]` Switch |

### 4.2 Radio Button Groups (in preferences)

```xml
Adw.PreferencesGroup {
  Adw.ActionRow {
    title: _("Option A");
    activatable-widget: radio_a;
    [prefix] CheckButton radio_a { valign: center; }
  }
  Adw.ActionRow {
    title: _("Option B");
    activatable-widget: radio_b;
    [prefix] CheckButton radio_b {
      valign: center;
      group: radio_a;   <!-- mutually exclusive -->
    }
  }
}
```

**Key detail**: Radio groups use `CheckButton` in `[prefix]` of `ActionRow`, NOT `RadioButton`. The `group` property links them.

### 4.3 Toggle Groups (compact, in header bars or rows)

```xml
Adw.ToggleGroup {
  homogeneous: true;
  Adw.Toggle { name: "left"; label: _("_Left"); use-underline: true; }
  Adw.Toggle { name: "right"; label: _("_Right"); use-underline: true; }
}
```

### 4.4 Boxed Lists (for small static lists)

Used for non-preferences content lists (e.g., recent files, device lists):
- `GtkListBox` with `.boxed-list` style class
- Each row: `AdwActionRow` or custom row
- Rows with navigation: add `go-next-symbolic` arrow at end
- Maximum 2 controls per row
- Row click triggers the control

### 4.5 Grid Views

- `GtkGridView` + `GtkGridViewItem`
- Used for visual browsing (Nautilus icon view, theme selectors)
- `GtkFlowBox` for irregular/wrapping grids (Text Editor's theme picker)

---

## 5. Control Patterns

### 5.1 Buttons

**Header Bar buttons**:
- `.flat` style (no visible background/border)
- Icon-only: `icon-name="document-new-symbolic"`
- Icon + label: Button with icon and label
- All must have `tooltip-text`

**Content-area buttons**:
- Icon OR label (not both)
- Same width when adjacent
- Imperative verbs with header capitalization: "Save", "Update", "Add"
- `.suggested-action` for primary call-to-action
- `.destructive-action` for destructive actions
- `.pill` for prominent standalone buttons
- `.circular` for icon-only compact buttons

### 5.2 Switches

- Preferred over checkboxes for binary settings
- Noun labels with header capitalization: "Automatic Location"
- Always include `use-underline: true` for access keys
- Active/inactive background color communicates state independently
- Make insensitive when feature is disabled/unavailable

### 5.3 Checkboxes

- Only when a switch doesn't feel appropriate
- In preferences: used in `[prefix]` of `ActionRow` for radio groups
- Label with header capitalization

### 5.4 Text Fields

- Use placeholder text OR labels (placeholder preferred for cleaner layout)
- Label with header capitalization + access key
- Size field according to expected content length
- Apply settings changes on Return or focus-loss
- Embedded buttons/icons must be symbolic style
- Validation: show positive feedback when valid, not negative while editing

### 5.5 Drop-Down Lists (Combo Rows)

- `AdwComboRow` with a `GListModel`
- Use expression binding for display: `expression: <lookup name="name" type="ItemType"/>`

### 5.6 Sliders & Scales

```xml
Scale {
  hexpand: true;
  marks [ mark (-1, bottom, _("Slow")), mark (0), mark (1, bottom, _("Fast")) ]
  adjustment: Adjustment { lower: -1; upper: 1; step-increment: 0.1; }
}
```

### 5.8 Menu Models (Primary Menus)

GNOME apps typically use XML menu models for hamburger (primary) menus:

```xml
<menu id="primary_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">_New Window</attribute>
      <attribute name="action">app.new-window</attribute>
    </item>
  </section>
  <section>
    <item>
      <attribute name="label" translatable="yes">P_references</attribute>
      <attribute name="action">win.show-preferences</attribute>
      <attribute name="accel">&lt;control&gt;comma</attribute>
    </item>
    <item>
      <attribute name="label" translatable="yes">_Keyboard Shortcuts</attribute>
      <attribute name="action">app.shortcuts</attribute>
    </item>
    <item>
      <attribute name="label" translatable="yes">A_bout Text Editor</attribute>
      <attribute name="action">app.about</attribute>
    </item>
  </section>
</menu>
```

**Blueprint equivalent**:
```
menu primary_menu {
  section {
    item { label: _("_New Window"); action: "app.new-window"; }
  }
  section {
    item { label: _("P_references"); action: "win.show-preferences"; }
    item { label: _("_Keyboard Shortcuts"); action: "app.shortcuts"; }
    item { label: _("A_bout"); action: "app.about"; }
  }
}
```

**Standard menu sections** (in order):
1. View/mode switching (if applicable)
2. Primary actions (New, Open, Save)
3. Secondary actions (Find, Print)
4. Window controls (Fullscreen)
5. Preferences, Shortcuts, About

### 5.9 Info Buttons in Preferences

Some settings groups include an info button in the header suffix:

```xml
<object class="AdwPreferencesGroup">
  <property name="title">Software Updates</property>
  <property name="header-suffix">
    <object class="GtkMenuButton">
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
    </object>
  </property>
  <!-- rows... -->
</object>
```

### 5.10 Inline Button Sections in Menus

```xml
<section>
  <attribute name="display-hint">inline-buttons</attribute>
  <item><attribute name="custom">rotate-left</attribute></item>
  <item><attribute name="custom">rotate-right</attribute></item>
</section>
```

### 5.7 Spin Buttons

- `AdwSpinRow` for numeric preferences
- Always provide `adjustment` with `lower`, `upper`, `step-increment`

---

## 6. Feedback Patterns

### 6.1 Toasts (preferred for transient feedback)

```c
adw_toast_overlay_add_toast (overlay, 
    adw_toast_new_format (_("Deleted \"%s\""), filename));
// With undo:
adw_toast_set_button_label (toast, _("_Undo"));
adw_toast_set_action_name (toast, "app.undo");
```

**Rules**:
- Short, simple titles using informal heading style
- Only include a button if directly relevant (e.g., Undo)
- Position: bottom-center of parent window
- Transient, user-dismissible
- Prefer undo toasts over confirmation dialogs for destructive actions

### 6.2 Banners (for persistent states)

- `AdwBanner` for ongoing states (syncing, offline, errors)
- Shown at top of content area
- Can include action button

### 6.3 Dialogs

**Alert Dialogs**:
- Confirmation dialogs: two buttons (confirm + cancel)
- Error dialogs: avoid; use toasts for non-critical errors

**Action Dialogs** (`AdwDialog`/`AdwWindow`):
- For complex multi-field input
- Modal to parent

### 6.4 Status Pages (empty states)

```xml
Adw.StatusPage {
  title: _("Open a Document");
  description: _("Create a new document (Ctrl+N), or open an existing one (Ctrl+O)");
  icon-name: "document-open-symbolic";
  child: Gtk.Button {
    label: _("_New Empty File");
    styles ["suggested-action", "pill"]
  };
}
```

### 6.5 Progress

- `GtkProgressBar` for determinate progress
- `AdwSpinner` for indeterminate/loading states
- Show in header bar or inline, never in dialogs unless blocking

### 6.6 Tooltips

- **All** header bar buttons must have `tooltip-text`
- Use for clarifying icon-only controls
- Keep short: 1-5 words

---

## 7. UI Styling

### 7.1 Light/Dark

```c
// Follow system preference (recommended for most apps)
adw_style_manager_set_color_scheme (adw_style_manager_get_default (),
    ADW_COLOR_SCHEME_DEFAULT);  // or PREFER_LIGHT / PREFER_DARK / FORCE_LIGHT / FORCE_DARK
```

**Rules**:
- Most apps: light by default, follow system preference
- Media apps (video, image viewer): dark by default
- Text editors: offer per-app preference (Light / Dark / Follow System)
- Use `AdwStyleManager` API

### 7.2 Typography

- Use system font (Adwaita Sans / Inter)
- Never hard-code font sizes; use CSS style classes
- Standard styles: `body`, `title`, `heading`, `caption`, `monospace`
- Header capitalization for: button labels, switch labels, row titles, view switcher labels
- Sentence capitalization for: subtitles, descriptions, placeholder text
- No italics, no all-caps
- Dim labels: add `.dim-label` style class for secondary text

### 7.3 App-Specific CSS

```css
/* App-specific style class on the window */
.org-gnome-TextEditor { }
```

Apply via `<style><class name="org-gnome-TextEditor"/></style>` on the window.

### 7.4 Icon Style

- **Symbolic icons** (`-symbolic` suffix): for UI controls — monochrome, adapts to theme
- **Full-color icons**: for app icons and content thumbnails only
- Use standard GNOME icon names from the [Icon Library](https://apps.gnome.org/IconLibrary/)

### 7.5 Accessibility

- Test with high-contrast mode (system setting + GTK Inspector)
- All controls must have access keys (`use-underline: true` + underscore in label)
- Meaningful `accessible-role` and `accessible-label`/`labelled-by`
- Keyboard navigation for all functionality
- Screen reader support via ATK

---

## 8. Adaptive Design

### 8.1 Breakpoints

```xml
Adw.BreakpointBin {
  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters {
      header_bar.title-widget: null;
      view_switcher_bar.reveal: true;
    }
  }
}
```

Or using `AdwBreakpoint` objects (XML format):

```xml
<object class="AdwBreakpoint">
  <condition>max-width: 650sp</condition>
  <setter object="multi_layout" property="layout-name">narrow</setter>
</object>
```

### 8.2 Layout Strategies

- `AdwMultiLayoutView` + `AdwLayout` (wide/narrow): Text Editor approach
- `AdwBreakpointBin` + setter conditions: Settings approach
- `AdwBottomSheet` for narrow sidebar (Text Editor's properties panel)
- `AdwViewSwitcherBar` (auto-reveals when window narrow)
- `AdwFlap` for foldable sidebars
- Start design from narrowest width, expand up

### 8.3 Common Adaptive Patterns

| Desktop (wide) | Mobile (narrow) |
|---|---|
| `AdwViewSwitcher` in header bar | `AdwViewSwitcherBar` at bottom |
| `AdwOverlaySplitView` sidebar | `AdwBottomSheet` or `AdwNavigationView` |
| Label + Icon buttons | Icon-only buttons |
| `AdwPreferencesPage` full-width | Same, just narrower (min ~300px) |

---

## 9. Settings/Preferences Architecture

### 9.1 GSettings Schema

Every preference must be backed by GSettings:

```xml
<!-- org.gnome.TextEditor.gschema.xml -->
<schema id="org.gnome.TextEditor" path="/org/gnome/TextEditor/">
  <key name="show-line-numbers" type="b">
    <default>true</default>
    <summary>Display line numbers</summary>
  </key>
  <key name="font" type="s">
    <default>'Adwaita Mono 12'</default>
    <summary>Editor font</summary>
  </key>
</schema>
```

### 9.2 Preference Dialog Structure

```
AdwPreferencesDialog
└── AdwPreferencesPage
    ├── AdwPreferencesGroup (section title)
    │   ├── AdwSwitchRow / AdwActionRow / AdwComboRow / AdwSpinRow
    │   └── ...
    ├── AdwPreferencesGroup
    │   └── ...
    └── AdwPreferencesGroup
        └── AdwButtonRow (destructive-action style for clear/reset)
```

### 9.3 Binding Preferences to Widgets

**GSettings bind**:
```c
g_settings_bind (settings, "show-line-numbers",
                 switch, "active",
                 G_SETTINGS_BIND_DEFAULT);
```

**Custom widget with schema-key** (Text Editor pattern):
```xml
<object class="EditorPreferencesSwitch">
  <property name="title" translatable="yes">Display _Line Numbers</property>
  <property name="schema-key">show-line-numbers</property>
</object>
```

### 9.4 Preferences Dialog Features

- `search-enabled: true` on `AdwPreferencesDialog` (Nautilus pattern)
- Group settings semantically with `AdwPreferencesGroup`
- Each group: `title` (required), `description` (optional, for context)
- Destructive actions (Clear History, Reset): use `AdwButtonRow` with `.destructive-action`
- Advanced settings: use `AdwExpanderRow` with a Switch `[action]`

---

## 10. File Structure Conventions

```
my-gnome-app/
├── data/
│   ├── org.example.MyApp.desktop.in    # Desktop entry
│   ├── org.example.MyApp.gschema.xml   # GSettings schema
│   ├── org.example.MyApp.metainfo.xml  # AppStream metadata
│   └── icons/                          # App icons (SVG)
├── src/
│   ├── main.c (or main.rs, main.py)
│   ├── my-app-window.ui / .blp         # Window UI definition
│   ├── my-app-preferences.ui / .blp    # Preferences UI
│   ├── my-app-window.c / .rs / .py     # Window logic
│   └── widgets/                        # Custom widgets
├── po/                                 # Translations
├── meson.build                         # Build system
└── README.md
```

---

## 11. Framework & Language Tips

### 11.1 Rust + GTK 4 (gtk4-rs + libadwaita)

**Strengths**: Memory safety, strong type system, excellent for new apps.

```rust
use gtk::prelude::*;
use adw::prelude::*;

fn build_ui(app: &adw::Application) {
    let window = adw::ApplicationWindow::new(app);
    let header = adw::HeaderBar::new();
    
    let content = gtk::Box::new(gtk::Orientation::Vertical, 0);
    let page = adw::PreferencesPage::new();
    let group = adw::PreferencesGroup::new();
    group.set_title("Appearance");
    
    let switch_row = adw::SwitchRow::new();
    switch_row.set_title("Dark Mode");
    group.add(&switch_row);
    page.add(&group);
    
    let toolbar = adw::ToolbarView::new();
    toolbar.add_top_bar(&header);
    toolbar.set_content(Some(&page));
    window.set_content(Some(&toolbar));
}
```

**Key crates**: `gtk4`, `adw` (libadwaita), `gio`, `glib`, `sourceview5` (for text editors)

**Blueprint support**: Use `blueprint` crate or compile `.blp` → `.ui` via `blueprint-compiler`

**Gotchas**: 
- Use `glib::Binding` or property bindings, not manual signal wiring for settings
- Wrap GObjects in `glib::Object` subclasses with `#[derive(glib::Properties)]`

### 11.2 Python + PyGObject

**Strengths**: Rapid prototyping, easy to learn, great for scripting apps.

```python
import gi
gi.require_version('Gtk', '4.0')
gi.require_version('Adw', '1')

from gi.repository import Gtk, Adw, Gio

class MyWindow(Adw.ApplicationWindow):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.set_default_size(600, 500)
        
        header = Adw.HeaderBar()
        content = Gtk.Box(orientation=Gtk.Orientation.VERTICAL)
        
        toolbar = Adw.ToolbarView()
        toolbar.add_top_bar(header)
        toolbar.set_content(content)
        self.set_content(toolbar)
```

**Key packages**: `python3-gi`, `gir1.2-gtk-4.0`, `gir1.2-adw-1`

**Blueprint**: Use `blueprint-compiler` CLI to compile `.blp` files in build step

**Gotchas**:
- Always `gi.require_version()` before importing
- Use `Gio.Settings` for preferences
- `.ui` files loaded via `Gtk.Builder` or `Adw.ApplicationWindow` template binding

### 11.3 C + GTK 4 + libadwaita

**Strengths**: Native, most GNOME apps use this, best documentation.

```c
#include <gtk/gtk.h>
#include <adwaita.h>

static void my_app_activate(GApplication *app) {
    AdwApplicationWindow *window = ADW_APPLICATION_WINDOW(
        adw_application_window_new(GTK_APPLICATION(app)));
    
    AdwHeaderBar *header = ADW_HEADER_BAR(adw_header_bar_new());
    AdwToolbarView *toolbar = ADW_TOOLBAR_VIEW(adw_toolbar_view_new());
    adw_toolbar_view_add_top_bar(toolbar, GTK_WIDGET(header));
    
    AdwPreferencesPage *page = ADW_PREFERENCES_PAGE(adw_preferences_page_new());
    adw_toolbar_view_set_content(toolbar, GTK_WIDGET(page));
    adw_application_window_set_content(window, GTK_WIDGET(toolbar));
    gtk_window_present(GTK_WINDOW(window));
}
```

**Build system**: Meson + `dependency('gtk4')` + `dependency('libadwaita-1')`

**Blueprint**: Compile `.blp` with `blueprint-compiler` in meson build step

### 11.4 Vala

**Strengths**: GNOME-native language, compiles to C, first-class GObject support.

```vala
public class MyApp : Adw.Application {
    protected override void activate() {
        var window = new Adw.ApplicationWindow(this);
        var header = new Adw.HeaderBar();
        var toolbar = new Adw.ToolbarView();
        toolbar.add_top_bar(header);
        
        var page = new Adw.PreferencesPage();
        var group = new Adw.PreferencesGroup() { title = "Appearance" };
        var switch_row = new Adw.SwitchRow() { title = "Dark Mode" };
        group.add(switch_row);
        page.add(group);
        toolbar.set_content(page);
        window.set_content(toolbar);
        window.present();
    }
}
```

**Build**: `meson` + `valac` compiler. Blueprint via `blueprint-compiler`.

### 11.5 JavaScript + GJS (GNOME JavaScript)

**Strengths**: Used for GNOME Shell extensions and some apps.

```javascript
import Adw from 'gi://Adw';
import Gtk from 'gi://Gtk';

const window = new Adw.ApplicationWindow({ application });
const header = new Adw.HeaderBar();
const toolbar = new Adw.ToolbarView();
toolbar.add_top_bar(header);

const page = new Adw.PreferencesPage();
const group = new Adw.PreferencesGroup({ title: 'Appearance' });
group.add(new Adw.SwitchRow({ title: 'Dark Mode' }));
page.add(group);
toolbar.set_content(page);
window.set_content(toolbar);
```

**Key modules**: `gi://Gtk`, `gi://Adw`, `gi://Gio`, `gi://GLib`

### 11.6 Blueprint (.blp) — The UI Markup Language

Blueprint is the recommended UI definition format for new GNOME apps. It compiles to GtkBuilder XML.

**Key syntax**:
```
using Gtk 4.0;
using Adw 1;

template $MyWidget: Adw.Bin {
  // Properties
  margin-top: 12;

  // Child widgets (named by type)
  Gtk.Label {
    label: _("Hello");
    styles ["title"]
  }

  // Named children
  Button my_button {
    label: _("Click Me");
    clicked => $on_clicked_cb(template);
  }

  // Layout children with [prefix], [suffix], [top], [bottom]
  [top]
  Adw.HeaderBar { }

  // Property bindings
  sensitive: bind other_widget.active;
}
```

**Compile**: `blueprint-compiler compile my-widget.blp --output my-widget.ui`

**Use in code**: Load compiled `.ui` via `Gtk.Builder` or `Adw.ApplicationWindow` template

---

## 12. Common App Templates

### 12.1 Simple Utility App

```
AdwApplicationWindow
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwWindowTitle)
    └── content: your main widget (AdwPreferencesPage, GtkBox, etc.)
```

### 12.2 Settings/Control Panel Style

```
AdwApplicationWindow
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwViewSwitcher)
    └── content: AdwViewStack
        ├── AdwViewStackPage → AdwPreferencesPage
        │   ├── AdwPreferencesGroup { SwitchRows, ActionRows, ComboRows }
        │   └── AdwPreferencesGroup { ... }
        └── AdwViewStackPage → ...
    └── [bottom] AdwViewSwitcherBar
```

### 12.3 Document Editor App

```
AdwApplicationWindow
└── AdwMultiLayoutView
    ├── wide: AdwLayout
    │   └── AdwTabView + AdwTabBar + AdwOverlaySplitView (sidebar)
    └── narrow: AdwLayout
        └── AdwTabView + AdwTabBar + AdwBottomSheet (sidebar)
```

### 12.4 Browser / Content App

```
AdwApplicationWindow
└── AdwNavigationSplitView
    ├── sidebar: list of AdwNavigationPage items
    └── content: AdwNavigationView
        └── content pages (Grid View, List View, etc.)
```

### 12.5 NavigationView + ViewStack (Clocks pattern)

```
AdwApplicationWindow
└── AdwToastOverlay
    └── AdwNavigationView
        └── AdwNavigationPage (main)
            └── AdwToolbarView
                ├── [top] AdwHeaderBar (ViewSwitcher)
                ├── content: AdwViewStack
                │   ├── AdwViewStackPage { icon-name, title }
                │   └── ...
                └── [bottom] AdwViewSwitcherBar
        └── AdwNavigationPage (subpage)  ← pushed from main
```

**Use when**: Main pages use ViewSwitcher, but also need drill-down subpages (Clocks: World Clock → individual city).

### 12.6 Fullscreen Content Viewer (Image Viewer/Loupe)

```
AdwApplicationWindow (AdwViewStack)
├── AdwBreakpoint (min-width: 590sp → wide layout)
└── AdwToastOverlay
    └── AdwViewStack
        ├── LpImageWindow (main view)
        │   └── AdwToolbarView
        │       └── [top] LpShyBin (auto-hides header in fullscreen)
        │           └── AdwHeaderBar
        └── Edit Window
```

**Use when**: App displays fullscreen media (images, video) with overlay controls. Dark theme by default. Use `AdwViewStack` with `enable-transitions: true` for view changes.

### 12.7 Mode-Based App (Calculator)

Uses menu-based mode switching instead of ViewSwitcher:

```
AdwApplicationWindow
└── AdwToolbarView
    ├── [top] AdwHeaderBar (mode label + hamburger menu)
    └── content: AdwViewStack (switched by menu actions)
```

**Use when**: App has many modes (6+) that don't fit a ViewSwitcher. Modes are switched via hamburger menu items with `action: "win.mode"`.

---

## 13. Anti-Patterns (What NOT to Do)

| Don't | Do Instead |
|-------|-----------|
| Use `GtkCheckButton` directly in preferences | Use `AdwSwitchRow` or `CheckButton` in `[prefix]` of `ActionRow` |
| Put title text directly in header bar | Use `AdwWindowTitle` widget |
| Stack multiple secondary windows | Use in-window navigation (NavigationView, OverlaySplitView) |
| Hard-code font families or sizes | Use `.title`, `.body`, `.caption` CSS classes |
| Use confirmation dialogs for undoable actions | Use `AdwToast` with Undo button |
| Put labels AND icons on content-area buttons | Icon OR label (outside header bars) |
| Create custom settings storage | Use GSettings/GSchema |
| Skip access keys (`use-underline`) | Always include `_` in labels + `use-underline: true` |
| Skip tooltips on header bar buttons | Always add `tooltip-text` |
| Use radio buttons directly | Use `CheckButton` with `group` in `[prefix]` of `ActionRow` |
| Mix navigation patterns | Pick ONE: view switcher, sidebar, tabs, or stack |
| Run preferences inline in main window | Use `AdwPreferencesDialog` (or `AdwPreferencesWindow`) |
| Use `GtkWindow` directly | Use `AdwApplicationWindow` |
| Use `GtkHeaderBar` directly | Use `AdwHeaderBar` |

---

## 14. Checklist for New GNOME Apps

**Architecture**:
- [ ] Uses `AdwApplication` + `AdwApplicationWindow`
- [ ] Single primary window (or justified multiple)
- [ ] Adaptive: works at 360px width minimum

**Header Bar**:
- [ ] `AdwHeaderBar` with `AdwWindowTitle` centered
- [ ] Primary actions at [start], secondary at [end]
- [ ] All buttons have `tooltip-text`
- [ ] Flat style buttons (icon-only or icon+label)
- [ ] `<control>comma` → Preferences

**Navigation**:
- [ ] One clear navigation pattern
- [ ] `AdwViewSwitcher` + `AdwViewStack` if 3-5 views
- [ ] `AdwViewSwitcherBar` for narrow widths

**Preferences**:
- [ ] `AdwPreferencesDialog` with GSettings backend
- [ ] `search-enabled: true`
- [ ] Groups with descriptive titles
- [ ] `AdwSwitchRow` for binary, `AdwComboRow` for multi-option

**Feedback**:
- [ ] Toasts for transient messages (not dialogs)
- [ ] Undo instead of confirmation dialogs
- [ ] Status pages for empty states

**Styling**:
- [ ] Follows system light/dark preference
- [ ] Uses symbolic icons for UI
- [ ] Standard typography classes
- [ ] Header capitalization on controls, sentence case on descriptions

**Accessibility**:
- [ ] Access keys on all labeled controls
- [ ] Keyboard-navigable (Tab order, shortcuts)
- [ ] Works with high-contrast mode
- [ ] Screen reader labels where needed

---

## 15. Reference: Key libadwaita Widgets

| Widget | Use |
|--------|-----|
| `AdwApplicationWindow` | Primary window |
| `AdwHeaderBar` | Window header |
| `AdwToolbarView` | Outer container (header + content) |
| `AdwViewStack` + `AdwViewSwitcher` | Flat page switching |
| `AdwViewSwitcherBar` | Bottom switcher for narrow widths |
| `AdwNavigationView` | Push/pop navigation |
| `AdwNavigationSplitView` | Sidebar + content |
| `AdwOverlaySplitView` | Overlay sidebar (properties) |
| `AdwTabView` + `AdwTabBar` | Tabbed documents |
| `AdwPreferencesDialog` | Preferences window |
| `AdwPreferencesPage` | Page within preferences |
| `AdwPreferencesGroup` | Section within a page |
| `AdwSwitchRow` | Switch + title |
| `AdwActionRow` | Title + custom widget |
| `AdwComboRow` | Dropdown selector |
| `AdwSpinRow` | Numeric input |
| `AdwButtonRow` | Clickable row with arrow |
| `AdwExpanderRow` | Expandable section |
| `AdwStatusPage` | Empty state page |
| `AdwToast` + `AdwToastOverlay` | Transient notifications |
| `AdwBanner` | Persistent message bar |
| `AdwBreakpointBin` | Adaptive breakpoint container |
| `AdwMultiLayoutView` | Alternate layouts per breakpoint |
| `AdwBottomSheet` | Bottom sheet for narrow screens |
| `AdwFlap` | Foldable sidebar |
| `AdwNavigationView` | Push/pop navigation with back button |
| `AdwNavigationPage` | Page within NavigationView |
| `AdwStyleManager` | Light/dark theme control |
| `GtkPopover` | Context popover (info, menus, forms) |
| `GtkRevealer` | Animated reveal widget |
| `GtkFlowBox` | Wrapping grid (theme selectors, category tiles) |
| `GtkCenterBox` | Three-region box (start, center, end) |

---

*Spec version: 0.2.0 — Compiled from GNOME HIG v47 + source audits of gnome-control-center, gnome-text-editor, nautilus, gnome-calculator, gnome-clocks, gnome-weather, loupe, gnome-software, gnome-calendar.*
