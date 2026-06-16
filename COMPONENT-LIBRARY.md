# GNOME Design Tokens & Component Library

> **For AI agents**: Precise values, style classes, and component variations extracted from the GNOME HIG and 9 audited core apps.
> Use this as a lookup table when constructing GNOME UIs.

---

## 1. Design Tokens — Spacing & Sizing

### 1.1 Spacing Scale (spacing property)

Used in `GtkBox`, `GtkFlowBox`, and other containers with `spacing`:

| Value | Usage | Frequency |
|-------|-------|-----------|
| `3` | Tight icon+label pair, toggle group buttons | Rare |
| `6` | **Default row item spacing** — between icon and label, list items | **Most common** |
| `8` | Horizontal layout spacing | Common |
| `10` | Medium spacing between grouped controls | Frequent |
| `12` | **Default container spacing** — between groups, sections | **Most common** |
| `18` | Wide spacing — separators, card layouts | Common |
| `24` | Section-level spacing | Frequent |
| `26` | Extra-wide separation | Rare |

### 1.2 Margin Values

Standard margin values found across apps:

| Value | Where Used |
|-------|-----------|
| `0` | Eliminating inherited margins |
| `3` | Tiny padding (icon buttons, compact rows) |
| `6` | **Default row margin** — start/end of list rows |
| `8` | Slightly wider than default |
| `9` | Precisely balanced card interior |
| `12` | **Default container interior** — standard padding |
| `15` | Split row interior spacing |
| `18` | **Card/grid item interior** — generous padding |
| `21` | Header-level spacing |
| `24` | **Section margin** — between major groups |
| `30` | Wide section padding |
| `32` | Bottom page padding |
| `36` | Very wide (rare) |

**Standard usage pattern**:
```
margin-top: 12
margin-bottom: 12
margin-start: 12    ← left in LTR
margin-end: 12      ← right in LTR
```

### 1.3 Window Sizing

| Property | Typical Values | Notes |
|----------|---------------|-------|
| `width-request` | `360` | **Minimum width** (almost all apps) |
| `height-request` | `260`, `294`, `300` | Minimum height |
| `default-width` | `480`, `600`, `900`, `1050` | Content-dependent |
| `default-height` | `498`, `650`, `294` | Content-dependent |
| `content-width` (prefs) | `462`, `520`, `600`, `610`, `640` | Preferences dialog width |

### 1.4 Sidebar & Split View Widths

| Property | Value | App |
|----------|-------|-----|
| `min-sidebar-width` | `255` | Loupe metadata |
| `min-sidebar-width` | `280` | Loupe properties |
| `min-sidebar-width` | `350` | Text Editor properties |

### 1.5 Grid & Flow Box

| Property | Common Values |
|----------|--------------|
| `column-spacing` | `6`, `12`, `14` |
| `row-spacing` | `3`, `6`, `12`, `14` |
| `max-children-per-line` | `4` (Text Editor theme picker) |

---

## 2. Typography & Font Styles

### 2.1 Standard Font Style Classes (from HIG)

| Style Name | CSS Class | Use | Example |
|-----------|-----------|-----|---------|
| Body | `body` | Default — control labels, descriptive text | PreferencesGroup descriptions |
| Heading | `heading` | UI headings, window titles, group headings | "Appearance", "General" |
| Caption | `caption` | Small sub-text | File sizes, dates, secondary info |
| Caption Heading | `caption-heading` | Small heading text | Column headers |
| Title | `title` | Primary window title, page titles | Header bar title |
| Subtitle | `subtitle` | Secondary heading text | Header bar subtitle line |
| Title-1 | `title-1` | Largest heading (rare) | Greeter/welcome screens |
| Title-2 | `title-2` | Large heading | Software category titles |
| Title-3 | `title-3` | Medium heading | — |
| Title-4 | `title-4` | Small heading | — |
| Large Title | `large-title` | Display headings (rare) | Only with lots of whitespace |
| Monospace | `monospace` | Code, terminal, numbers | Calculator display, code editor |
| Numeric | `numeric` | Tabular numbers | Clock digits, aligned numbers |

### 2.2 Font Weight & Color Conventions

| Purpose | Style | Example |
|---------|-------|---------|
| Primary label | `.title` class, normal weight | "Display Line Numbers" |
| Secondary/description | `.dim-label` or `.caption` class | "Return to your previous session..." |
| Muted/disabled | `.dim-label` + insensitive state | Inactive controls |
| Accent/active | `.suggested-action` on buttons | "New Empty File" button |

### 2.3 Text Capitalization Rules

| Context | Capitalization | Example |
|---------|---------------|---------|
| Button labels | **Header** | "Save", "Add to Favorites" |
| Switch labels | **Header** | "Automatic Location" |
| Row titles | **Header** | "Pointer Speed" |
| View switcher labels | **Header** | "Month", "Week" |
| Group titles | **Header** | "Appearance", "General" |
| Subtitles | **Sentence** | "Return to your previous session..." |
| Descriptions | **Sentence** | "Automatically removes empty workspaces" |
| Placeholder text | **Sentence** | "Search for a city or country" |
| Tooltips | **Sentence** | "Leave Fullscreen" |

### 2.4 Unicode Convention

| Usage | Wrong | Right |
|-------|-------|-------|
| Quotes | "quote" | "quote" |
| Multiplication | 1024x768 | 1024×768 |
| Ellipsis | ... | ... |
| Apostrophe | user's | user's |
| Bullets | * One | * One |
| Ranges | June-July | June-July |

---

## 3. CSS Style Classes Reference

### 3.1 Widget Styles (`.class` in XML/Blueprint)

| Class | Effect | Used On |
|-------|--------|---------|
| `body` | Default text style | Labels, descriptions |
| `title` | Primary title weight/size | Header bar titles, row titles |
| `subtitle` | Secondary title style | Header bar subtitle, row subtitles |
| `heading` | Section heading weight | PreferencesGroup titles |
| `caption` | Small secondary text | File sizes, dates, age text |
| `dim-label` | Muted/dimmed text | Secondary info, descriptions |
| `suggested-action` | Blue accent button | Primary CTA (New, Save, Install) |
| `destructive-action` | Red warning button | Delete, Clear History, Remove |
| `flat` | No background/border | Header bar buttons |
| `circular` | Round icon button | Close/tab-remove buttons |
| `pill` | Rounded prominent button | Standalone CTAs |
| `linked` | Join adjacent buttons | Toggle groups, format toolbars |
| `card` | Card-like raised background | Content cards, previews |
| `boxed-list` | Standard list container | Settings lists |
| `frame` | Bordered frame | Image containers, preview borders |
| `background` | View background | Content areas |
| `osd` | On-screen display | Overlay controls |
| `toolbar` | Toolbar styling | Top toolbars |
| `numeric` | Tabular number font | Clock displays |
| `monospace` | Fixed-width font | Code, terminal |
| `property` | Property label style | Sidebar property rows |
| `large-button` | Extra-large button | Prominent standalone buttons |

### 3.2 App-Specific CSS Class Convention

Each app adds its own CSS namespace class on the window:

```xml
<style>
  <class name="org-gnome-TextEditor"/>
</style>
```

Then use:
```css
.org-gnome-TextEditor .preview { /* custom styling */ }
```

### 3.3 Compound Style Examples (from real apps)

```xml
<!-- Destructive clear button -->
<class name="destructive-action"/>

<!-- Large pill CTA button -->
<class name="suggested-action"/>
<class name="large-button"/>
<class name="pill"/>

<!-- Flat circular icon button -->
<class name="circular"/>
<class name="flat"/>

<!-- Dimmed caption text -->
<class name="caption"/>
<class name="dim-label"/>

<!-- Card with frame -->
<class name="card"/>
<class name="frame"/>
```

---

## 4. Component Library

Each component shows: description, Blueprint syntax, XML syntax, properties, and real usage examples.

### 4.1 AdwApplicationWindow

**Base widget for all GNOME app windows.**

```
Adw.ApplicationWindow {
  width-request: 360;        ← minimum width (standard)
  height-request: 294;       ← minimum height (standard)
  default-width: 600;        ← initial width
  default-height: 500;       ← initial height
  hide-on-close: false;      ← true for background apps (Clocks)
  title: _("My App");        ← window title
}
```

**Property reference**:
| Property | Type | Default | Notes |
|----------|------|---------|-------|
| `width-request` | int | -1 | Set to `360` minimum |
| `height-request` | int | -1 | Set to `294` minimum |
| `default-width` | int | -1 | Content-appropriate |
| `default-height` | int | -1 | Content-appropriate |
| `hide-on-close` | bool | false | `true` for background apps |

**Real usage**:
- Text Editor: `width-request: 360`, Clocks: `width-request: 360, height-request: 294`
- Loupe: `default-width: 600, default-height: 498`
- Weather: `default-width: 1050, default-height: 650`

---

### 4.2 AdwHeaderBar

**Window header with three alignment zones.**

```xml
<object class="AdwHeaderBar">
  <property name="show-start-title-buttons">false</property>
  <property name="show-end-title-buttons">false</property>
  <property name="centering-policy">strict</property>
  <property name="title-widget">
    <object class="AdwWindowTitle">
      <property name="title">My App</property>
    </object>
  </property>
</object>
```

**Blueprint**:
```
Adw.HeaderBar {
  centering-policy: strict;
  title-widget: Adw.WindowTitle {
    title: _("My App");
  };
}
```

**Layout slots**:
| Slot | Position | Content |
|------|----------|---------|
| `[start]` / `<child type="start">` | Left | Primary actions (New, Open, Back) |
| `[center]` / `title-widget` | Center | WindowTitle or ViewSwitcher |
| `[end]` / `<child type="end">` | Right | Menu buttons, secondary actions |

**Button styling in header bars**:
- Always use `.flat` style (invisible background)
- Icon-only: `icon-name="document-new-symbolic"`
- Icon + label: put label and icon in a `GtkBox`
- All must have `tooltip-text`

**Centering policies**:
| Policy | Behavior |
|--------|----------|
| `strict` | Title strictly centered (Weather) |
| `loose` | Title shifts to avoid overlap |

---

### 4.3 AdwToolbarView

**Standard outer container with header bar + content + bottom bar.**

```xml
<object class="AdwToolbarView">
  <child type="top">
    <object class="AdwHeaderBar">...</object>
  </child>
  <property name="content">
    <object class="AdwPreferencesPage">...</object>
  </property>
</object>
```

**Blueprint**:
```
Adw.ToolbarView {
  [top]
  Adw.HeaderBar { }

  content: Adw.PreferencesPage {
    // ...
  }

  [bottom]
  Adw.ViewSwitcherBar {
    stack: stack;
  }
}
```

**Slots**:
| Slot | Use |
|------|-----|
| `[top]` | Header bar(s) |
| `content:` | Main content widget |
| `[bottom]` | Status bar, ViewSwitcherBar |

---

### 4.4 AdwPreferencesPage + AdwPreferencesGroup

**The canonical GNOME settings pattern. Every app's preferences use this.**

```
Adw.PreferencesPage {
  Adw.PreferencesGroup {
    title: _("Appearance");
    description: _("These settings control how the app looks.");  ← optional
    
    Adw.SwitchRow { title: _("Dark Mode"); use-underline: true; }
    Adw.ComboRow { title: _("Theme"); model: theme_model; }
  }

  Adw.PreferencesGroup {
    title: _("Behavior");
    
    Adw.SpinRow {
      title: _("Font Size");
      adjustment: Adjustment { lower: 8; upper: 32; step-increment: 1; };
    }
  }
}
```

**AdwPreferencesGroup properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** — section heading |
| `description` | string | Optional — context/explanation text |
| `header-suffix` | widget | Info button, level bar, test button |
| `separate-rows` | bool | Adds separators between rows |

**Row types you can put in a PreferencesGroup**:

| Widget | Use Case |
|--------|----------|
| `AdwSwitchRow` | Binary on/off setting (preferred over checkboxes) |
| `AdwActionRow` + widget | Setting with custom control in `[suffix]` |
| `AdwComboRow` | Single-select from a list of options |
| `AdwSpinRow` | Numeric value with spin buttons |
| `AdwButtonRow` | Navigate or trigger action (ends with → arrow) |
| `AdwExpanderRow` | Expandable section with optional `[action]` Switch |
| `AdwPreferencesRow` | Custom non-standard row layout |

---

### 4.5 AdwSwitchRow

```xml
<object class="AdwSwitchRow">
  <property name="title" translatable="yes">Display _Line Numbers</property>
  <property name="use-underline">True</property>
  <property name="subtitle" translatable="yes">Show line numbers in the editor</property>
</object>
```

**Blueprint**:
```
Adw.SwitchRow {
  title: _("Display _Line Numbers");
  use-underline: true;
  subtitle: _("Show line numbers in the editor");   ← optional
}
```

**Properties**:
| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `title` | string | **Yes** | Include `_` for access key |
| `use-underline` | bool | **Yes** | Always `true` |
| `subtitle` | string | No | Descriptive secondary text |
| `active` | bool | No | Initial state (default: false) |

---

### 4.6 AdwActionRow (custom control row)

```xml
<object class="AdwActionRow">
  <property name="title" translatable="yes">Po_inter Speed</property>
  <property name="use-underline">True</property>
  <property name="subtitle" translatable="yes">Adjust pointer speed</property>
  <property name="activatable-widget">speed_scale</property>
  <child type="suffix">
    <object class="GtkScale" id="speed_scale">
      <property name="hexpand">true</property>
    </object>
  </child>
</object>
```

**Blueprint**:
```
Adw.ActionRow {
  title: _("Po_inter Speed");
  use-underline: true;
  subtitle: _("Adjust pointer speed");    ← optional
  activatable-widget: speed_scale;

  [suffix]
  Scale speed_scale {
    hexpand: true;
    adjustment: Adjustment { lower: -1; upper: 1; step-increment: 0.1; };
  }
}
```

**Slots**:
| Slot | Use |
|------|-----|
| `[prefix]` | CheckButton (radio groups), icon |
| `[suffix]` | Switch, Scale, Combo, Spin, Image, Label |
| `[suffix]` (multiple) | Stack multiple widgets; last one aligns right |

**Properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** |
| `use-underline` | bool | Always `true` |
| `subtitle` | string | Optional description |
| `activatable-widget` | id | Clicking row activates this widget |

---

### 4.7 AdwActionRow + Switch (very common pattern)

```xml
<object class="AdwActionRow">
  <property name="title" translatable="yes">Mouse _Acceleration</property>
  <property name="subtitle" translatable="yes">Recommended for most users</property>
  <property name="activatable-widget">accel_switch</property>
  <child type="suffix">
    <object class="GtkSwitch" id="accel_switch">
      <property name="valign">center</property>
    </object>
  </child>
</object>
```

**When to use**: When you need a subtitle under a switch. (AdwSwitchRow supports subtitle too, but ActionRow+Switch gives you more control.)

---

### 4.8 AdwActionRow + CheckButton Radio Group

The standard GNOME radio button pattern:

```xml
<object class="AdwPreferencesGroup">
  <object class="AdwActionRow">
    <property name="title" translatable="yes">_Automatic</property>
    <property name="subtitle" translatable="yes">Automatically check for updates</property>
    <property name="activatable-widget">auto_radio</property>
    <child type="prefix">
      <object class="GtkCheckButton" id="auto_radio">
        <property name="valign">center</property>
        <property name="active">True</property>
      </object>
    </child>
  </object>
  <object class="AdwActionRow">
    <property name="title" translatable="yes">_Manual</property>
    <property name="subtitle" translatable="yes">Updates must be done manually</property>
    <property name="activatable-widget">manual_radio</property>
    <child type="prefix">
      <object class="GtkCheckButton" id="manual_radio">
        <property name="valign">center</property>
        <property name="group">auto_radio</property>
      </object>
    </child>
  </object>
</object>
```

**Key**: Use `GtkCheckButton` (NOT `GtkRadioButton`) in `[prefix]`. Link with `group` property.

---

### 4.9 AdwComboRow

```xml
<object class="AdwComboRow">
  <property name="title" translatable="yes">_Character</property>
  <property name="use-underline">True</property>
  <property name="model">indent_model</property>
  <property name="expression">
    <lookup name="name" type="EditorIndent"/>
  </property>
</object>
```

**Blueprint with StringList model**:
```
Adw.ComboRow {
  title: _("_Angle Units");
  use-underline: true;

  model: StringList {
    strings [
      _("Degrees"),
      _("Radians"),
      _("Gradians"),
    ]
  };
}
```

**Properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | Include `_` for access key |
| `model` | GListModel | StringList, GtkStringList, or custom model |
| `expression` | expression | How to display items (for object models) |

---

### 4.10 AdwSpinRow

```xml
<object class="AdwSpinRow">
  <property name="title" translatable="yes">Spaces Per _Tab</property>
  <property name="use-underline">True</property>
  <property name="numeric">true</property>
  <property name="digits">0</property>
  <property name="climb-rate">1</property>
  <property name="adjustment">
    <object class="GtkAdjustment">
      <property name="lower">1</property>
      <property name="upper">32</property>
      <property name="value">8</property>
      <property name="step-increment">1</property>
      <property name="page-increment">4</property>
    </object>
  </property>
</object>
```

**Blueprint**:
```
Adjustment tab_width_adjustment {
  lower: 1;
  upper: 32;
  step-increment: 1;
  page-increment: 4;
  value: 8;     ← optional default
}

Adw.SpinRow {
  title: _("Number of _Decimals");
  use-underline: true;
  numeric: true;
  adjustment: tab_width_adjustment;
  value: 9;     ← can also set on SpinRow directly
}
```

---

### 4.11 AdwButtonRow

```xml
<object class="AdwButtonRow">
  <property name="title" translatable="yes">Test _Settings</property>
  <property name="use-underline">True</property>
  <property name="end-icon-name">go-next-symbolic</property>
  <signal name="activated" handler="on_test_clicked"/>
</object>
```

**Blueprint**:
```
Adw.ButtonRow {
  title: _("_Clear History");
  use-underline: true;
  end-icon-name: "go-next-symbolic";

  styles [
    "destructive-action",     ← for dangerous actions
  ]

  activated => $on_clear_history_cb(template);
}
```

**The `end-icon-name` is always `go-next-symbolic`** — it signals "this row navigates somewhere."

---

### 4.12 AdwExpanderRow

```xml
<object class="AdwExpanderRow">
  <property name="title" translatable="yes">Custom _Font</property>
  <property name="use-underline">True</property>
  <property name="expanded">false</property>
  <child type="action">
    <object class="GtkSwitch" id="enable_custom_font">
      <property name="halign">end</property>
      <property name="valign">center</property>
    </object>
  </child>
  <child>
    <object class="EditorPreferencesFont" id="custom_font"/>
  </child>
</object>
```

**Slots**:
| Slot | Use |
|------|-----|
| `[action]`/`<child type="action">` | Switch that enables/disables child content |
| default child | Content revealed when expanded |

---

### 4.13 AdwViewStack + AdwViewSwitcher

```xml
<object class="AdwHeaderBar">
  <property name="title-widget">
    <object class="AdwViewSwitcher">
      <property name="stack">my_stack</property>
      <property name="policy">wide</property>
    </object>
  </property>
</object>
<object class="AdwViewStack" id="my_stack">
  <object class="AdwViewStackPage">
    <property name="name">tab1</property>
    <property name="title" translatable="yes">_First</property>
    <property name="use-underline">True</property>
    <property name="icon-name">icon-one-symbolic</property>
    <property name="child">...widget...</property>
  </object>
  <object class="AdwViewStackPage">
    <property name="name">tab2</property>
    <property name="title" translatable="yes">_Second</property>
    <property name="use-underline">True</property>
    <property name="icon-name">icon-two-symbolic</property>
    <property name="child">...widget...</property>
  </object>
</object>
<object class="AdwViewSwitcherBar">
  <property name="stack">my_stack</property>
</object>
```

**ViewSwitcherBar**: Auto-revealed at narrow widths. Controlled via `Breakpoint`.

**AdwViewStackPage properties**:
| Property | Type | Required | Notes |
|----------|------|----------|-------|
| `name` | string | **Yes** | Internal identifier |
| `title` | string | **Yes** | Display label with `_` for access key |
| `use-underline` | bool | **Yes** | Always `true` |
| `icon-name` | string | Recommended | Symbolic icon name |
| `child` | widget | **Yes** | Content for this page |
| `visible` | bool | No | `false` to hide conditionally |
| `needs-attention` | bool | No | Badge indicator |

---

### 4.14 AdwBreakpoint (Adaptive)

**Blueprint format** (Settings):
```
Adw.BreakpointBin {
  width-request: 300;
  height-request: 200;

  Adw.Breakpoint {
    condition ("max-width: 500sp")

    setters {
      header_bar.title-widget: null;
      view_switcher_bar.reveal: true;
      some_row.compact: true;
    }
  }

  child: Adw.ToolbarView { /* ... */ }
}
```

**XML format** (Text Editor, Clocks, Loupe):
```xml
<object class="AdwBreakpoint">
  <condition>max-width: 650sp</condition>
  <setter object="multi_layout" property="layout-name">narrow</setter>
</object>
```

**Common breakpoint values**:
| Condition | App | What changes |
|-----------|-----|-------------|
| `max-width: 400sp` | Text Editor | Buttons become icon-only |
| `max-width: 500sp` | Settings | ViewSwitcher→WindowTitle, ViewSwitcherBar revealed |
| `max-width: 590sp` | Loupe | Layout switches to narrow |
| `max-width: 600sp` | Clocks | ViewSwitcherBar revealed |
| `max-width: 650sp` | Text Editor | Layout switches to narrow |
| `min-width: 590sp` | Loupe | Layout switches to wide |

**Note**: `sp` = scaled pixels (font-relative, accessibility-friendly).

---

### 4.15 AdwStatusPage (Empty State)

```xml
<object class="AdwStatusPage" id="empty">
  <property name="title" translatable="yes">Open a Document</property>
  <property name="description" translatable="yes">Create a new document (Ctrl+N), or open an existing one (Ctrl+O)</property>
  <property name="icon-name">document-open-symbolic</property>
  <property name="child">
    <object class="GtkButton">
      <property name="label" translatable="yes">_New Empty File</property>
      <property name="use-underline">True</property>
      <property name="halign">center</property>
      <style>
        <class name="suggested-action"/>
        <class name="large-button"/>
        <class name="pill"/>
      </style>
    </object>
  </property>
</object>
```

**Properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | Main message |
| `description` | string | Sub-message, instruction text |
| `icon-name` | string | Symbolic icon (optional) |
| `child` | widget | Action button (optional) |

---

### 4.16 AdwToast + AdwToastOverlay

```xml
<object class="AdwToastOverlay" id="toast_overlay">
  <property name="child">
    <!-- main content -->
  </property>
</object>
```

**Creating toasts in code**:
```c
// Simple toast
adw_toast_overlay_add_toast (overlay, 
    adw_toast_new (_("File saved.")));

// Toast with undo button
AdwToast *toast = adw_toast_new_format (_("Deleted \"%s\""), filename);
adw_toast_set_button_label (toast, _("_Undo"));
adw_toast_set_action_name (toast, "app.undo");
adw_toast_set_priority (toast, ADW_TOAST_PRIORITY_HIGH);
adw_toast_overlay_add_toast (overlay, toast);
```

**Wrap the entire window content in `AdwToastOverlay`** — don't wrap individual sections.

---

### 4.17 AdwNavigationView + AdwNavigationPage

```xml
<object class="AdwNavigationView" id="navigation_view">
  <object class="AdwNavigationPage" id="main_page">
    <property name="title" translatable="yes">Clocks</property>
    <object class="AdwToolbarView">
      <!-- main content -->
    </object>
  </object>
  <object class="AdwNavigationPage" id="detail_page">
    <property name="title" translatable="yes">City Detail</property>
    <property name="can-pop">True</property>
    <object class="GtkBox">
      <!-- detail content -->
    </object>
  </object>
</object>
```

**Properties**:
| Property | Type | Notes |
|----------|------|-------|
| `title` | string | Page title (shown in back button) |
| `can-pop` | bool | `false` to prevent back navigation |

**Push/pop in code**:
```c
adw_navigation_view_push (nav_view, 
    adw_navigation_page_new (child_widget, "Detail Title"));
```

---

### 4.18 AdwOverlaySplitView (Sidebar)

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

---

### 4.19 AdwBottomSheet (Mobile sidebar)

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

---

### 4.20 AdwTabView + AdwTabBar

```xml
<object class="AdwTabView" id="tab_view">
  <property name="hexpand">true</property>
  <property name="vexpand">true</property>
  <property name="menu-model">tab_menu</property>
  <signal name="close-page" handler="on_tab_view_close_page_cb"/>
</object>
<object class="AdwTabBar" id="tab_bar">
  <property name="view">tab_view</property>
</object>
```

**TabBar placement**: In the `[top]` slot of `AdwToolbarView`, below the HeaderBar.

---

### 4.21 AdwClamp (Width Constraint)

```xml
<object class="AdwClamp">
  <property name="maximum-size">600</property>
  <child>
    <!-- content that won't exceed 600px -->
  </child>
</object>
```

**Blueprint**:
```
Adw.Clamp {
  maximum-size: 600;
  SearchEntry { placeholder-text: _("Search..."); }
}
```

**Use**: Constrain content width on very wide windows.

---

### 4.22 AdwFlap (Foldable Sidebar)

```xml
<object class="AdwFlap">
  <property name="flap-position">start</property>
  <property name="reveal-flap">true</property>
  <property name="content">
    <!-- main content -->
  </property>
  <property name="flap">
    <!-- sidebar -->
  </property>
</object>
```

---

### 4.23 Buttons — Full Reference

| Style | Classes | Context |
|-------|---------|---------|
| Header bar flat icon | `.flat` | `icon-name="...-symbolic"` |
| Header bar flat text+icon | `.flat` | Box with label + icon |
| Suggested action | `.suggested-action` | Primary CTA |
| Destructive action | `.destructive-action` | Delete, clear, reset |
| Pill button | `.suggested-action` `.pill` | Standalone CTA |
| Large pill | `.suggested-action` `.large-button` `.pill` | Welcome screen |
| Circular icon | `.circular` `.flat` | Close/remove buttons |
| Linked toggle | `.linked` | Adjacent toggle buttons |

---

### 4.24 Menus (XML format)

```xml
<menu id="primary_menu">
  <section>
    <item>
      <attribute name="label" translatable="yes">_New Window</attribute>
      <attribute name="action">app.new-window</attribute>
      <attribute name="accel">&lt;control&gt;n</attribute>
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
      <attribute name="label" translatable="yes">A_bout My App</attribute>
      <attribute name="action">app.about</attribute>
    </item>
  </section>
</menu>
```

**Wiring to header bar**:
```xml
<object class="GtkMenuButton">
  <property name="icon-name">open-menu-symbolic</property>
  <property name="menu-model">primary_menu</property>
  <property name="tooltip-text" translatable="yes">Main Menu</property>
</object>
```

**Special attributes**:
| Attribute | Values | Effect |
|-----------|--------|--------|
| `hidden-when` | `action-disabled` | Hides when action is not available |
| `display-hint` | `inline-buttons` | Shows as button row (not list) |
| `custom` | any | Triggers custom handler in code |

---

### 4.25 GtkPopover

```xml
<object class="GtkMenuButton">
  <property name="icon-name">info-symbolic</property>
  <property name="popover">
    <object class="GtkPopover">
      <property name="child">
        <object class="GtkLabel">
          <property name="label" translatable="yes">Explanation text...</property>
          <property name="wrap">True</property>
          <property name="max-width-chars">50</property>
          <property name="margin-start">6</property>
          <property name="margin-end">6</property>
          <property name="margin-top">6</property>
          <property name="margin-bottom">6</property>
        </object>
      </property>
    </object>
  </property>
</object>
```

---

### 4.26 GtkSearchEntry

```xml
<object class="GtkSearchEntry">
  <property name="placeholder-text" translatable="yes">Search currencies</property>
  <signal name="search-changed" handler="on_search_changed"/>
</object>
```

---

### 4.27 GtkFlowBox (Wrapping Grid)

```xml
<object class="GtkFlowBox">
  <property name="column-spacing">12</property>
  <property name="row-spacing">12</property>
  <property name="max-children-per-line">4</property>
  <property name="selection-mode">none</property>
  <signal name="child-activated" handler="on_item_activated"/>
  <!-- Add children programmatically or in template -->
</object>
```

---

### 4.28 GtkRevealer (Animated Reveal)

```xml
<object class="GtkRevealer">
  <property name="transition-type">crossfade</property>
  <property name="child">
    <object class="GtkButton">
      <property name="icon-name">view-refresh-symbolic</property>
    </object>
  </property>
</object>
```

---

### 4.29 GtkStack (View Transitions)

```xml
<object class="GtkStack" id="stack">
  <property name="transition-type">crossfade</property>
  <property name="transition-duration">200</property>
  <child>
    <object class="GtkStackPage">
      <property name="name">page1</property>
      <property name="child">...</property>
    </object>
  </child>
  <child>
    <object class="GtkStackPage">
      <property name="name">page2</property>
      <property name="child">...</property>
    </object>
  </child>
</object>
```

**Switch pages in code**:
```c
gtk_stack_set_visible_child_name (stack, "page2");
```

---

### 4.30 GtkCenterBox

Three-region layout (start, center, end):

```xml
<object class="GtkCenterBox">
  <child type="start">
    <object class="GtkLabel" id="modified_indicator">
      <property name="label">•</property>
    </object>
  </child>
  <child type="center">
    <object class="GtkLabel" id="title">
      <property name="ellipsize">middle</property>
      <style><class name="title"/></style>
    </object>
  </child>
  <child type="end">
    <object class="GtkImage" id="indicator"/>
  </child>
</object>
```

---

### 4.31 GtkInscription (Text with Overflow)

Use instead of `GtkLabel` when you need text-overflow behavior:

```xml
<object class="GtkInscription">
  <property name="text-overflow">ellipsize-middle</property>
  <property name="min-chars">25</property>
  <property name="nat-chars">25</property>
  <property name="xalign">0</property>
</object>
```

---

### 4.32 GtkShortcutController

```xml
<object class="GtkShortcutController">
  <child>
    <object class="GtkShortcut">
      <property name="trigger">F11</property>
      <property name="action">action(win.toggle-fullscreen)</property>
    </object>
  </child>
  <child>
    <object class="GtkShortcut">
      <property name="trigger">&lt;Alt&gt;w</property>
      <property name="action">action(settings.wrap-text)</property>
    </object>
  </child>
</object>
```

**Standard shortcuts**:
| Trigger | Action | Purpose |
|---------|--------|---------|
| `F11` | `win.fullscreen` | Toggle fullscreen |
| `<control>comma` | `win.show-preferences` | Open preferences |
| `<control>f` | `page.begin-search` | Find |
| `<control>s` | `page.save` | Save |
| `<control>n` | `app.new-window` or `session.new-draft` | New window/tab |
| `<control>w` | `win.close-current-page` | Close tab |
| `Escape` | `window.close` | Close dialog |

---

## 5. Layout Recipes

### 5.1 Standard Preferences Window

```xml
<object class="AdwPreferencesDialog" id="preferences_dialog">
  <property name="search-enabled">true</property>
  <property name="content-width">600</property>
  <child>
    <object class="AdwPreferencesPage">
      <object class="AdwPreferencesGroup">
        <property name="title" translatable="yes">Section Title</property>
        <property name="description" translatable="yes">Optional context description</property>
        <!-- rows here -->
      </object>
    </object>
  </child>
</object>
```

### 5.2 Standard Main Window

```
Adw.ApplicationWindow {
  width-request: 360;
  default-width: 600;
  default-height: 500;

  Adw.Breakpoint {
    condition ("max-width: 500sp");
    setters { view_switcher_bar.reveal: true; }
  }

  content: Adw.ToolbarView {
    [top] Adw.HeaderBar {
      title-widget: Adw.WindowTitle { title: _("My App"); };
    }
    content: /* your content */
    [bottom] Adw.ViewSwitcherBar { stack: stack; }
  };
}
```

### 5.3 ViewSwitcher App Template

```
Adw.ApplicationWindow {
  Adw.Breakpoint { condition ("max-width: 500sp"); setters { bar.reveal: true; }; }

  Adw.ToolbarView {
    [top] Adw.HeaderBar {
      title-widget: Adw.ViewSwitcher { stack: stack; policy: wide; };
    }
    content: Adw.ViewStack stack {
      Adw.ViewStackPage { name: "a"; title: _("_First"); icon-name: "…-symbolic"; child: …; }
      Adw.ViewStackPage { name: "b"; title: _("_Second"); icon-name: "…-symbolic"; child: …; }
      Adw.ViewStackPage { name: "c"; title: _("_Third"); icon-name: "…-symbolic"; child: …; }
    };
    [bottom] Adw.ViewSwitcherBar bar { stack: stack; }
  };
}
```

### 5.4 Tabbed Document App Template

```
Adw.ApplicationWindow {
  width-request: 360;

  Adw.Breakpoint { condition ("max-width: 650sp"); setter { layout.layout-name: "narrow"; }; }

  Adw.MultiLayoutView layout {
    [wide] Adw.Layout {
      Adw.TabView tabs { };
      Adw.TabBar tab_bar { view: tabs; };
    }
    [narrow] Adw.Layout {
      Adw.TabView tabs { };
      Adw.TabBar tab_bar { view: tabs; };
    }
  };
}
```

---

*Token spec version: 0.1.0. Values extracted from: gnome-control-center, gnome-text-editor, nautilus, gnome-calculator, gnome-clocks, gnome-weather, loupe, gnome-software.*
