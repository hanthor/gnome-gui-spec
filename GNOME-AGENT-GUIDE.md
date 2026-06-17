# GNOME GUI Specification & Agent Authoring Guide

> **Compiled from**: GNOME HIG v47 + source audits of 34 GNOME apps (28 Core + 6 Dev Tools)  
> **Purpose**: Single definitive reference for AI agents constructing GNOME-compliant applications.  
> **Version**: 1.1.0

---

## 1. Design Principles

1. **Design for People** — Accommodate different abilities, cultures, form factors.
2. **Make it Simple** — Do one thing well. Progressive disclosure. Frequent actions near, infrequent far.
3. **Reduce User Effort** — Automate where possible. Minimize steps. Short text.
4. **Be Considerate** — Prevent mistakes. Allow undo instead of confirming. Don't interrupt.

---

## 2. Design Tokens

### 2.1 Spacing Scale

| Value | Where | Frequency |
|-------|-------|-----------|
| `3` | Tight icon+label pairs, toggle button groups | Rare |
| `6` | **Default row spacing** — between icon & label, list items | **Most common** |
| `8` | Horizontal layout spacing | Common |
| `10` | Medium inter-group spacing | Frequent |
| `12` | **Default container/section spacing** | **Most common** |
| `18` | Wide spacing — card layouts, separators | Common |
| `24` | Section-level separation | Frequent |
| `26` | Extra-wide separation | Rare |

### 2.2 Margin Values

| Value | Where |
|-------|-------|
| `0` | Eliminating inherited margins |
| `3` | Tiny padding (icon buttons, compact rows) |
| `6` | **Default row margin** — `margin-start`/`margin-end` of list rows |
| `9` | Card interior precision spacing |
| `12` | **Default container interior** — `margin-{top,bottom,start,end}: 12` |
| `15` | Split row interior |
| `18` | **Card/grid item interior** — generous padding |
| `24` | **Section margin** — between major groups |
| `30` | Wide section padding |
| `32` | Bottom page padding |

**Standard row padding pattern**:
```
margin-top: 12; margin-bottom: 12; margin-start: 12; margin-end: 12;
```

### 2.3 Window Sizing

| Property | Typical Value | Notes |
|----------|--------------|-------|
| `width-request` | `360` | **Minimum width** — universal |
| `height-request` | `260`, `294`, `300` | Minimum height |
| `default-width` | `480`, `600`, `900`, `1050` | Content-dependent |
| `default-height` | `498`, `650` | Content-dependent |
| `content-width` (prefs) | `462`, `520`, `600`, `610`, `640` | Preferences dialog |

### 2.4 Sidebar Widths

| Property | Value | App |
|----------|-------|-----|
| `min-sidebar-width` | `255`–`280` | Property sidebars |
| `min-sidebar-width` | `300` | Manuals sidebar |
| `min-sidebar-width` | `350` | Document properties (Text Editor) |
| `sidebar-width-fraction` | `0.5` | D-Spy navigation split (50%) |
| `sidebar-width-fraction` | `0.66` | D-Spy overlay split (66%) |
| `max-sidebar-width` | `400` | D-Spy navigation split |
| `max-sidebar-width` | `800` | D-Spy overlay split |

### 2.5 Breakpoint Values

| Condition | App | Effect |
|-----------|-----|--------|
| `max-width: 400sp` | Text Editor | Buttons become icon-only |
| `max-width: 500sp` | Settings, D-Spy | ViewSwitcher→WindowTitle, reveal ViewSwitcherBar; nested split view collapses |
| `max-width: 560sp` | Builder | Preferences sidebar collapses |
| `max-width: 590sp` | Loupe | Layout switches to narrow |
| `max-width: 600sp` | Clocks, Manuals | Reveal ViewSwitcherBar; full layout swap wide→narrow via MultiLayoutView |
| `max-width: 650sp` | Text Editor | Layout switches to narrow |
| `max-width: 700sp` | D-Spy | Outer OverlaySplitView collapses to overlay mode |
| `min-width: 590sp` | Loupe | Layout switches to wide |

### 2.6 Typography

Font: **Adwaita Sans** (Inter variant). Never hard-code sizes — use CSS classes.

**Font style classes**:

| CSS Class | Weight/Size | Use |
|-----------|------------|-----|
| `body` | Regular, default | Control labels, descriptive text |
| `title` | Bold, large | Primary window titles, row titles |
| `subtitle` | Regular, medium | Secondary heading text |
| `heading` | Bold, medium | UI headings, group titles |
| `caption` | Small | Sub-text, file sizes, dates |
| `caption-heading` | Small bold | Column headers |
| `title-1` | Extra bold, large | Display headings (rare) |
| `title-2` | Bold, large | Category titles |
| `title-3` | Semibold, medium | Sub-headings |
| `title-4` | Medium, smaller | Small headings |
| `large-title` | Extra large | Greeter/welcome (rare, needs whitespace) |
| `monospace` | Fixed-width | Code, terminal, calculator |
| `numeric` | Tabular numbers | Clock digits, aligned numbers |
| `dim-label` | Muted color | Secondary info, descriptions |

### 2.7 Capitalization Rules

| Context | Rule | Example |
|---------|------|---------|
| Button labels | **Header case** | "Save", "Add to Favorites" |
| Switch labels | **Header case** | "Automatic Location" |
| Row titles | **Header case** | "Pointer Speed" |
| View switcher tabs | **Header case** | "Month", "Week" |
| Group titles | **Header case** | "Appearance" |
| Subtitles | **Sentence case** | "Return to your previous session" |
| Descriptions | **Sentence case** | "Automatically removes empty workspaces" |
| Placeholder text | **Sentence case** | "Search for a city or country" |
| Tooltips | **Sentence case** | "Leave Fullscreen" |

### 2.8 Unicode

| Context | Wrong | Right |
|---------|-------|-------|
| Quotes | `"quote"` | `"quote"` |
| Multiplication | `1024x768` | `1024×768` |
| Ellipsis | `...` | `...` |
| Apostrophe | `user's` | `user's` |
| Ranges | `June-July` | `June-July` |

### 2.9 CSS Style Classes

| Class | Effect | Used On |
|-------|--------|---------|
| `body` | Default text style | Labels, descriptions |
| `title` | Primary title weight | Header bar titles, row titles |
| `subtitle` | Secondary title | Header bar subtitle |
| `heading` | Section heading weight | Group titles |
| `caption` | Small secondary text | File sizes, dates |
| `dim-label` | Muted/dimmed | Secondary info |
| `suggested-action` | Blue accent | Primary CTA button |
| `destructive-action` | Red warning | Delete, Clear History |
| `flat` | No background/border | Header bar buttons |
| `circular` | Round icon button | Close/remove buttons |
| `pill` | Rounded prominent | Standalone CTA buttons |
| `linked` | Join adjacent buttons | Toggle groups, toolbars |
| `card` | Raised card background | Content tiles, previews |
| `boxed-list` | Standard list container | Settings lists |
| `frame` | Bordered frame | Image containers |
| `background` | View background | Content areas |
| `osd` | On-screen display | Overlay controls |
| `numeric` | Tabular number font | Clock displays |
| `monospace` | Fixed-width font | Code, terminal |

**Compound examples**:
| Style Combination | Where |
|---|---|
| `.suggested-action` `.pill` | Primary CTA button |
| `.suggested-action` `.large-button` `.pill` | Welcome screen CTA |
| `.destructive-action` | Delete/reset button |
| `.circular` `.flat` | Header bar close button |
| `.caption` `.dim-label` | Secondary metadata text |
| `.card` `.frame` | Card with border |

### 2.10 Icons

- **Symbolic** (`-symbolic` suffix): For UI controls — monochrome, theme-adaptive
- **Full-color**: App icons + content thumbnails only
- Common symbolic icons: `open-menu-symbolic`, `go-next-symbolic`, `go-previous-symbolic`, `document-open-symbolic`, `view-refresh-symbolic`, `info-symbolic`, `edit-find-symbolic`, `window-close-symbolic`

---

## 3. Component Library

Each component: description, Blueprint + XML syntax, key properties, real usage.

### 3.1 AdwApplicationWindow — Primary Window

**Blueprint**:
```
Adw.ApplicationWindow {
  width-request: 360;
  height-request: 294;
  default-width: 600;
  default-height: 500;
  title: _("My App");
}
```

**XML**:
```xml
<template class="MyWindow" parent="AdwApplicationWindow">
  <property name="width-request">360</property>
  <property name="height-request">294</property>
  <property name="default-width">600</property>
  <property name="default-height">500</property>
</template>
```

| Property | Default | Notes |
|----------|---------|-------|
| `width-request` | -1 | Always set to `360` |
| `height-request` | -1 | Set to `294` |
| `default-width` | -1 | Content-appropriate |
| `hide-on-close` | false | `true` for background apps (Clocks) |

---

### 3.2 AdwHeaderBar — Window Header

**Blueprint**:
```
Adw.HeaderBar {
  centering-policy: strict;
  show-start-title-buttons: false;
  show-end-title-buttons: false;
  
  title-widget: Adw.WindowTitle {
    title: _("My App");
  };
}
```

**XML**:
```xml
<object class="AdwHeaderBar">
  <property name="centering-policy">strict</property>
  <property name="title-widget">
    <object class="AdwWindowTitle">
      <property name="title" translatable="yes">My App</property>
    </object>
  </property>
</object>
```

**Layout slots**: `[start]` (left, primary actions), `title-widget` (center, title/switcher), `[end]` (right, menu buttons)

**Button rules**: Always `.flat` style. Icon-only or icon+label. **Must** have `tooltip-text`.

---

### 3.3 AdwToolbarView — Outer Container

**Blueprint**:
```
Adw.ToolbarView {
  [top]    Adw.HeaderBar { }
  content: /* main widget */
  [bottom] Adw.ViewSwitcherBar { stack: stack; }
}
```

**XML**:
```xml
<object class="AdwToolbarView">
  <child type="top">
    <object class="AdwHeaderBar">...</object>
  </child>
  <property name="content">
    <object class="AdwPreferencesPage">...</object>
  </property>
  <child type="bottom">
    <object class="AdwViewSwitcherBar">...</object>
  </child>
</object>
```

---

### 3.4 AdwPreferencesGroup — Settings Section

**Blueprint**:
```
Adw.PreferencesGroup {
  title: _("Appearance");
  description: _("These settings control how the app looks.");   ← optional

  Adw.SwitchRow { title: _("_Dark Mode"); use-underline: true; }
  Adw.ComboRow  { title: _("_Theme"); model: theme_model; }
  Adw.SpinRow   { title: _("_Font Size"); adjustment: ...; }
  Adw.ButtonRow { title: _("_Advanced…"); end-icon-name: "go-next-symbolic"; }
}
```

**XML**:
```xml
<object class="AdwPreferencesGroup">
  <property name="title" translatable="yes">Appearance</property>
  <property name="description" translatable="yes">These settings control how the app looks.</property>
  <child>
    <object class="AdwSwitchRow">
      <property name="title" translatable="yes">_Dark Mode</property>
      <property name="use-underline">True</property>
    </object>
  </child>
</object>
```

| Property | Type | Notes |
|----------|------|-------|
| `title` | string | **Required** |
| `description` | string | Optional context text |
| `header-suffix` | widget | Info button, level bar, etc. |
| `separate-rows` | bool | Add separators between rows |

---

### 3.5 AdwSwitchRow — Binary Toggle

**Blueprint**:
```
Adw.SwitchRow {
  title: _("Display _Line Numbers");
  use-underline: true;
  subtitle: _("Show line numbers in the editor");   ← optional
}
```

| Property | Type | Required |
|----------|------|----------|
| `title` | string | **Yes** (with `_` for access key) |
| `use-underline` | bool | **Yes** — always `true` |
| `subtitle` | string | No — descriptive text |
| `active` | bool | No — initial state |

---

### 3.6 AdwActionRow — Custom Control Row

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

**XML**:
```xml
<object class="AdwActionRow">
  <property name="title" translatable="yes">Po_inter Speed</property>
  <property name="use-underline">True</property>
  <property name="activatable-widget">speed_scale</property>
  <child type="suffix">
    <object class="GtkScale" id="speed_scale">
      <property name="hexpand">true</property>
    </object>
  </child>
</object>
```

**Slots**: `[prefix]` (CheckButton for radios, icon), `[suffix]` (Switch, Scale, Combo, Label)

**Additional properties**:
| Property | Type | Notes |
|----------|------|-------|
| `subtitle-selectable` | bool | Makes subtitle text selectable for copy-paste (use in debugger/inspector tools). See D-Spy: `sources/dspy/src/dspy-window.ui:933`. |

---

### 3.7 ActionRow + Switch (common pattern)

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

**Use when**: You need a subtitle under a switch (ActionRow gives more layout control).

---

### 3.8 ActionRow + CheckButton Radio Group

The **standard GNOME radio button pattern**. Use `GtkCheckButton` (NOT `GtkRadioButton`):

```xml
<object class="AdwPreferencesGroup">
  <child>
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
  </child>
  <child>
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
  </child>
</object>
```

**Key**: `CheckButton` in `[prefix]` slot. Link via `group` property. `activatable-widget` so clicking the row toggles the button.

---

### 3.9 AdwComboRow — Dropdown Selector

**Blueprint with StringList**:
```
Adw.ComboRow {
  title: _("_Angle Units");
  use-underline: true;
  model: StringList {
    strings [ _("Degrees"), _("Radians"), _("Gradians") ]
  };
}
```

**XML with custom model**:
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

---

### 3.10 AdwSpinRow — Numeric Input

**Blueprint**:
```
Adjustment font_adjustment {
  lower: 8; upper: 32; step-increment: 1; page-increment: 4;
}

Adw.SpinRow {
  title: _("_Font Size");
  use-underline: true;
  numeric: true;
  digits: 0;
  climb-rate: 1;
  adjustment: font_adjustment;
}
```

**XML**:
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
      <property name="step-increment">1</property>
      <property name="page-increment">4</property>
    </object>
  </property>
</object>
```

---

### 3.11 AdwButtonRow — Navigation/Action Row

**Blueprint**:
```
Adw.ButtonRow {
  title: _("_Clear History");
  use-underline: true;
  end-icon-name: "go-next-symbolic";             ← always this icon
  styles ["destructive-action"];                  ← for dangerous actions
  activated => $on_clear_history_cb(template);
}
```

**XML**:
```xml
<object class="AdwButtonRow">
  <property name="title" translatable="yes">Test _Settings</property>
  <property name="use-underline">True</property>
  <property name="end-icon-name">go-next-symbolic</property>
  <signal name="activated" handler="on_test_clicked"/>
</object>
```

The `end-icon-name` is always `go-next-symbolic`.

---

### 3.12 AdwExpanderRow — Expandable Section

```xml
<object class="AdwExpanderRow">
  <property name="title" translatable="yes">Custom _Font</property>
  <property name="use-underline">True</property>
  <property name="expanded" bind-source="use_custom_font" bind-property="active" bind-flags="sync-create|bidirectional"/>
  <child type="action">
    <object class="GtkSwitch" id="use_custom_font">
      <property name="halign">end</property>
      <property name="valign">center</property>
    </object>
  </child>
  <child>
    <object class="EditorPreferencesFont" id="custom_font"/>
  </child>
</object>
```

**Slots**: `[action]` (Switch to enable/disable), default child (revealed content).

---

### 3.13 AdwViewStack + AdwViewSwitcher — Flat Page Switching

**Blueprint**:
```
Adw.ViewStack stack {
  Adw.ViewStackPage {
    name: "tab1";
    title: _("_First");
    use-underline: true;
    icon-name: "icon-one-symbolic";
    child: /* widget */;
  }
  Adw.ViewStackPage {
    name: "tab2";
    title: _("_Second");
    use-underline: true;
    icon-name: "icon-two-symbolic";
    child: /* widget */;
  }
}

Adw.ViewSwitcher { stack: stack; policy: wide; }        ← in header bar
Adw.ViewSwitcherBar { stack: stack; }                    ← bottom, narrow widths
```

**XML**:
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
  <child>
    <object class="AdwViewStackPage">
      <property name="name">tab1</property>
      <property name="title" translatable="yes">_First</property>
      <property name="use-underline">True</property>
      <property name="icon-name">icon-one-symbolic</property>
      <property name="child">...</property>
    </object>
  </child>
</object>
<object class="AdwViewSwitcherBar">
  <property name="stack">my_stack</property>
</object>
```

**ViewStackPage properties**: `name`, `title`, `use-underline`, `icon-name`, `child`, `visible`, `needs-attention`

---

### 3.14 AdwBreakpoint — Adaptive Layout

**Blueprint** (Settings style):
```
Adw.BreakpointBin {
  width-request: 300;

  Adw.Breakpoint {
    condition ("max-width: 500sp")
    setters {
      header_bar.title-widget: null;
      view_switcher_bar.reveal: true;
      some_row.compact: true;
    }
  }

  child: Adw.ToolbarView { /* content */ };
}
```

**XML** (Text Editor style):
```xml
<object class="AdwBreakpoint">
  <condition>max-width: 650sp</condition>
  <setter object="multi_layout" property="layout-name">narrow</setter>
</object>
```

`sp` = scaled pixels (font-relative, accessibility-friendly).

---

### 3.15 AdwStatusPage — Empty State

**Blueprint**:
```
Adw.StatusPage {
  title: _("Open a Document");
  description: _("Create a new document (Ctrl+N), or open an existing one (Ctrl+O)");
  icon-name: "document-open-symbolic";

  child: Gtk.Button {
    label: _("_New Empty File");
    use-underline: true;
    halign: center;
    styles ["suggested-action", "large-button", "pill"]
  };
}
```

**XML**:
```xml
<object class="AdwStatusPage" id="empty">
  <property name="title" translatable="yes">Open a Document</property>
  <property name="description" translatable="yes">Create a new document or open an existing one</property>
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

---

### 3.16 AdwToast + AdwToastOverlay

Wrap the **entire window content** in `AdwToastOverlay`:

```xml
<object class="AdwToastOverlay" id="toast_overlay">
  <property name="child">
    <!-- all window content -->
  </property>
</object>
```

**Creating toasts** (C):
```c
// Simple message
adw_toast_overlay_add_toast (overlay, adw_toast_new (_("File saved.")));

// With undo button
AdwToast *toast = adw_toast_new_format (_("Deleted \"%s\""), filename);
adw_toast_set_button_label (toast, _("_Undo"));
adw_toast_set_action_name (toast, "app.undo");
adw_toast_overlay_add_toast (overlay, toast);
```

**Rules**: Short titles. Only add button if directly relevant (Undo). Position: bottom-center.

---

### 3.17 AdwNavigationView — Push/Pop Navigation

```xml
<object class="AdwNavigationView" id="navigation_view">
  <child>
    <object class="AdwNavigationPage" id="main_page">
      <property name="title" translatable="yes">Clocks</property>
      <child>...</child>
    </object>
  </child>
  <child>
    <object class="AdwNavigationPage" id="detail_page">
      <property name="title" translatable="yes">City Detail</property>
      <property name="can-pop">True</property>
      <child>...</child>
    </object>
  </child>
</object>
```

| Property | Notes |
|----------|-------|
| `title` | Shown in back button |
| `can-pop` | `false` to prevent back navigation |

**Push in code** (C): `adw_navigation_view_push (nav, adw_navigation_page_new (child, "Detail"));`

---

### 3.18 AdwOverlaySplitView — Sidebar Panel

```xml
<object class="AdwOverlaySplitView" id="split_view">
  <property name="sidebar-position">end</property>
  <property name="show-sidebar">false</property>
  <property name="min-sidebar-width">350</property>
  <property name="content">...</property>
  <property name="sidebar">...</property>
</object>
```

Toggle with:
```xml
<object class="GtkToggleButton">
  <property name="active" bind-source="split_view" bind-property="show-sidebar" bind-flags="bidirectional|sync-create"/>
</object>
```

---

### 3.19 AdwBottomSheet — Narrow Screen Sidebar

```xml
<object class="AdwBottomSheet">
  <property name="open" bind-source="props_button" bind-property="active" bind-flags="bidirectional|sync-create"/>
  <property name="content">...</property>
  <property name="sheet">...</property>
</object>
```

**Use**: Narrow-screen alternative to `AdwOverlaySplitView`. Content in `content`, sidebar in `sheet`.

---

### 3.20 AdwTabView + AdwTabBar

```xml
<object class="AdwTabView" id="tab_view">
  <property name="hexpand">true</property>
  <property name="vexpand">true</property>
  <property name="menu-model">tab_menu</property>
  <signal name="close-page" handler="on_close_page"/>
  <signal name="setup-menu" handler="on_setup_menu"/>
</object>
<object class="AdwTabBar" id="tab_bar">
  <property name="view">tab_view</property>
</object>
```

Place `TabBar` in the `[top]` slot of `AdwToolbarView`, below the HeaderBar.

---

### 3.21 AdwPreferencesDialog — Preferences Window

```xml
<object class="AdwPreferencesDialog">
  <property name="search-enabled">true</property>
  <property name="content-width">600</property>
  <child>
    <object class="AdwPreferencesPage">
      <child>
        <object class="AdwPreferencesGroup">
          <property name="title" translatable="yes">Section</property>
          <!-- rows -->
        </object>
      </child>
    </object>
  </child>
</object>
```

**Blueprint**:
```
Adw.PreferencesDialog {
  search-enabled: true;
  content-width: 600;

  Adw.PreferencesPage {
    Adw.PreferencesGroup {
      title: _("Section");
      // rows
    }
  }
}
```

Show it: set `action="win.show-preferences"` and `accel="<control>comma"` in the menu.

---

### 3.22 Buttons — Style Reference

| Context | Classes | Example |
|---------|---------|---------|
| Header bar | `.flat` | Icon-only or icon+label button |
| Primary CTA | `.suggested-action` | "Save", "Install" |
| Destructive | `.destructive-action` | "Delete", "Clear History" |
| Prominent CTA | `.suggested-action` `.pill` | Standalone action |
| Welcome CTA | `.suggested-action` `.large-button` `.pill` | Empty state button |
| Close/remove | `.circular` `.flat` | Window-close icon button |
| Toggle group | `.linked` | Adjacent toggle buttons |

---

### 3.23 Menus

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

**Wiring**: `<object class="GtkMenuButton"><property name="menu-model">primary_menu</property>...</object>`

**Standard menu section order**: View/mode switching → Primary actions → Secondary actions → Window controls → Preferences/Shortcuts/About

**Special attributes**:

| Attribute | Effect |
|-----------|--------|
| `hidden-when="action-disabled"` | Hides when action unavailable |
| `display-hint="inline-buttons"` | Shows as button row, not list |
| `custom` | Triggers custom handler in code |

---

### 3.24 GtkPopover — Info/Context Popup

```xml
<object class="GtkMenuButton">
  <property name="icon-name">info-symbolic</property>
  <property name="tooltip-text" translatable="yes">More Information</property>
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
  <style><class name="flat"/></style>
</object>
```

---

### 3.25 Additional Widgets — Quick Reference

| Widget | Use | Key Property |
|--------|-----|-------------|
| `GtkSearchEntry` | Search input | `placeholder-text`, `search-changed` signal |
| `GtkFlowBox` | Wrapping grid | `column-spacing`, `row-spacing`, `max-children-per-line` |
| `GtkRevealer` | Animated reveal | `transition-type="crossfade"` |
| `GtkStack` | View transitions | `transition-type="crossfade"` |
| `GtkCenterBox` | Three-region layout | `[start]`, `[center]`, `[end]` slots |
| `GtkInscription` | Text with overflow | `text-overflow="ellipsize-middle"`, `min-chars` |
| `GtkScale` | Slider | `marks [mark(val, pos, label)]`, `adjustment` |
| `AdwClamp` | Width constraint | `maximum-size` |
| `AdwFlap` | Foldable sidebar | `flap-position`, `reveal-flap` |
| `AdwBanner` | Persistent message | `title`, `button-label` |
| `AdwSpinner` | Loading indicator | In header bar or inline |
| `GtkShortcutController` | Key bindings | `<child><object class="GtkShortcut">...</object></child>` |

---

## 4. App Architecture

### 4.1 Window Structure

```
AdwApplicationWindow
├── AdwBreakpoint (adaptive conditions)
├── GtkShortcutController (keyboard shortcuts)
└── AdwToolbarView / AdwMultiLayoutView
    ├── [top] AdwHeaderBar
    │   ├── [start] primary actions (flat buttons)
    │   ├── [center] AdwWindowTitle or AdwViewSwitcher
    │   └── [end] menu buttons, secondary actions
    ├── content: main area
    └── [bottom] AdwViewSwitcherBar or status bar
```

**Rules**:
- Primary windows: independent, resizable
- `width-request: 360` minimum (universal)
- Secondary windows (prefs, properties): modal to primary
- Close via Escape on dialogs/secondary windows

### 4.2 Navigation Patterns — Pick ONE

| Pattern | Widget | When |
|---------|--------|------|
| **View Switcher** | `AdwViewSwitcher` + `AdwViewStack` | 3-5 equal-importance pages |
| **Sidebar** | `AdwNavigationSplitView` | 6+ views or dynamic content |
| **Tabs** | `AdwTabView` + `AdwTabBar` | Multiple documents |
| **Stack + Back** | `AdwNavigationView` | Hierarchical drill-down |
| **Menu modes** | Menu items + `AdwViewStack` | 6+ modes (Calculator) |

**Never mix navigation patterns.** If you need sub-pages AND flat switching, nest them: `AdwNavigationView` containing an `AdwViewStack` page (Clocks pattern).

### 4.3 Adaptive Strategy

1. Design from narrowest width first, expand up
2. Use `AdwBreakpoint` with `sp` (scaled pixel) conditions
3. Common narrow adaptations: ViewSwitcher → ViewSwitcherBar, sidebar → BottomSheet, label+icon → icon-only buttons
4. Use `AdwMultiLayoutView` for complete layout swaps, `AdwBreakpointBin` for property changes

---

## 5. App Templates

### 5.1 Simple Utility App

```
AdwApplicationWindow
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwWindowTitle)
    └── content: main widget
```

### 5.2 Settings/Control Panel (ViewSwitcher)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 500sp"); setters { bar.reveal: true; }; }
└── AdwToolbarView
    ├── [top] AdwHeaderBar (AdwViewSwitcher { stack; policy: wide; })
    ├── content: AdwViewStack
    │   ├── AdwViewStackPage { name; title; icon-name; child: AdwPreferencesPage { ... } }
    │   └── ...
    └── [bottom] AdwViewSwitcherBar { stack; }
```

### 5.3 Document Editor (Tabs + Sidebar)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 650sp"); setter { layout.layout-name: "narrow"; }; }
└── AdwMultiLayoutView
    ├── wide: AdwLayout
    │   └── AdwOverlaySplitView (sidebar="end", min-sidebar-width: 350)
    │       ├── content: AdwTabView + AdwTabBar
    │       └── sidebar: properties panel
    └── narrow: AdwLayout
        └── AdwBottomSheet
            ├── content: AdwTabView + AdwTabBar
            └── sheet: properties panel
```

### 5.4 Content Browser (Sidebar)

```
AdwApplicationWindow
└── AdwNavigationSplitView
    ├── sidebar: AdwNavigationPage list
    └── content: AdwNavigationView with content pages
```

### 5.5 Fullscreen Media Viewer

```
AdwApplicationWindow
└── AdwToastOverlay
    └── AdwViewStack { enable-transitions: true; }
        ├── main view: AdwToolbarView { [top] shy header bar }
        └── edit view
```

Dark theme by default for media apps.

### 5.6 Wizard / Assistant (gnome-initial-setup)

```
GtkBox (vertical)
├── GtkHeaderBar (no title buttons)
│   ├── [start] Cancel, Back
│   ├── [center] GtkLabel (bold title)
│   └── [end] Skip, Forward (suggested-action)
└── GtkStack (slide-left-right transition)
    ├── Welcome Page: AdwStatusPage + suggested-action pill button
    ├── Privacy Page: AdwPreferencesPage > AdwPreferencesGroup
    │   ├── GisPageHeader (96px icon, title-1, subtitle, centered)
    │   ├── AdwActionRow + GtkSwitch rows
    │   └── Footer Label (dim-label, centered)
    └── Summary Page: ...
```

**Use when**: Sequential setup flow where user progresses through pages in order.
**Navigation**: Back/Forward buttons. Forward is `suggested-action`. Skip button optional.
**Page header**: Large icon (96px, dim-label), `title-1`, centered subtitle — lots of whitespace.

### 5.7 Carousel Tour / Onboarding (gnome-tour)

```
AdwApplicationWindow (960×720)
└── PaginatorWidget > AdwToolbarView
    ├── [top] GtkHeaderBar
    │   └── [center] AdwCarouselIndicatorDots { carousel; }
    └── content: GtkOverlay
        ├── [overlay] Previous button (.circular, left side)
        ├── [overlay] Next button / Start button (.suggested-action + .circular, right side)
        └── AdwCarousel
            ├── ImagePageWidget (SVG picture, title-1 heading, body text)
            ├── ...
            └── ImagePageWidget (last page: .last-page CSS class)
```

**Use when**: Feature tour, onboarding slideshow, or image carousel.
**Navigation**: Previous/Next overlay buttons. Last page has `suggested-action` "Start" button.
**Page template**: SVG image (`GtkPicture`), `title-1` heading (margin-top: 36), `body` text (lines: 2).

### 5.8 MultiLayout Wide/Narrow (Manuals)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 600sp"); setters { multi_layout.layout-name: "narrow"; }; }
└── AdwMultiLayoutView multi_layout
    ├── wide: AdwLayout
    │   ├── AdwLayoutSlot "statusbar"
    │   │   └── PanelStatusbar { [prefix] PathBar }
    │   └── AdwLayoutSlot "stack"
    │       ├── AdwTabView tabs { menu-model: tab_menu; }
    │       └── AdwTabBar tab_bar { view: tabs; }
    └── narrow: AdwLayout
        └── AdwLayoutSlot "sidebar_contents"
            └── AdwNavigationSplitView
                ├── sidebar: AdwNavigationPage list + search
                └── content: AdwNavigationPage
                    └── AdwToolbarView
                        ├── [top] AdwHeaderBar { AdwTabButton { view: tabs; } }
                        ├── content: AdwTabOverview { child: tabs; }
                        └── [bottom] toolbar
```

**Use when**: App needs completely different widget trees at different widths (not just property changes).
**Source**: `sources/manuals/src/manuals-window.ui`

### 5.9 Developer Inspector / Viewer App (D-Spy)

```
AdwApplicationWindow
├── AdwBreakpoint { condition ("max-width: 700sp"); setters { outer_split.collapsed: true; }; }
├── AdwBreakpoint { condition ("max-width: 500sp"); setters { inner_split.collapsed: true; signal::apply handler; }; }
└── AdwOverlaySplitView outer_split
    ├── content: AdwNavigationSplitView inner_split
    │   ├── sidebar: AdwNavigationView
    │   │   └── AdwNavigationPage
    │   │       └── AdwToolbarView
    │   │           ├── [top] AdwHeaderBar { AdwWindowTitle; GtkSearchEntry (bidirectional filter); }
    │   │           └── content: GtkListView (navigation-sidebar, no-selection)
    │   │               ├── factory: GtkBuilderListItemFactory (inline)
    │   │               └── model: GtkFilterListModel → GtkStringFilter → GtkSortListModel
    │   └── content: AdwNavigationView
    │       └── AdwNavigationPage (detail)
    │           └── AdwToolbarView
    │               ├── [top] AdwHeaderBar { AdwWindowTitle }
    │               └── content: GtkStack (empty / property / signal / method)
    │                   └── AdwPreferencesPage
    │                       └── AdwPreferencesGroup
    │                           └── AdwActionRow { subtitle-selectable: true; property CSS; }
    └── sidebar: (not used — one-pane in narrow mode)
```

**Use when**: Master-detail inspector/debugger with searchable lists and selectable property text.
**Key patterns**: `subtitle-selectable`, bidirectional filter binding, nested split views, inline `GtkBuilderListItemFactory`.

---

## 6. Delete, Remove & Destructive Actions

Every GNOME app must handle destructive actions consistently. There are **four tiers** of severity.

### 6.1 Tier 1: Trash with Undo Toast (preferred)

For file operations that can be undone. **This is the gold standard.**

**Widget**: `AdwToast` with Undo button + `AdwToastOverlay`

```rust
// Loupe pattern — trash image, offer undo
let toast = adw::Toast::builder()
    .title(gettext("Image moved to trash"))
    .button_label(gettext("Undo"))
    .priority(adw::ToastPriority::High)
    .build();
toast.connect_button_clicked(move |_| {
    // Restore file from trash
});
self.window_add_toast(toast);
```

**Rules**:
- Toast at bottom-center of window
- "Undo" button text (capitalized, noun)
- Short title describing what happened
- `AdwToastPriority::High` so it stays visible
- **Do NOT show a confirmation dialog first**

**Used by**: Loupe, Nautilus (NautilusFileUndoManager), gnome-software

### 6.2 Tier 2: Destructive ButtonRow (settings)

For irreversible destructive actions inside preferences.

**Widget**: `AdwButtonRow` with `.destructive-action` style

```xml
<!-- Text Editor: Clear History -->
<object class="AdwPreferencesGroup" id="clear_history_group">
  <child>
    <object class="AdwButtonRow">
      <property name="title" translatable="yes">_Clear History</property>
      <property name="use-underline">True</property>
      <property name="action-name">app.clear-history</property>
      <style><class name="destructive-action"/></style>
    </object>
  </child>
</object>
```

**Blueprint**:
```
Adw.PreferencesGroup {
  Adw.ButtonRow {
    title: _("_Clear History");
    use-underline: true;
    activated => $on_clear_cb(template);
    styles ["destructive-action"]
  }
}
```

**Used by**: Text Editor (Clear History), Calendar (Delete Event, Remove Calendar), Clocks (Remove Alarm)

### 6.3 Tier 3: Destructive Button (UI chrome)

For destructive actions in header bars, dialogs, or content areas.

**Widget**: `GtkButton` with `.destructive-action` style (+ optionally `.pill`)

```xml
<!-- Tavern: Remove installed package -->
<object class="GtkButton" id="remove_button">
  <property name="label" translatable="yes">Remove</property>
  <style><class name="destructive-action"/><class name="pill"/></style>
</object>
```

```xml
<!-- Software: Incompatible software upgrade -->
<object class="GtkButton" id="button_continue">
  <property name="label" translatable="yes">_Upgrade</property>
  <property name="use_underline">True</property>
  <style><class name="destructive-action"/></style>
</object>
```

**Used by**: Tavern (Remove package), Software (removal dialog), Brewfile Dialog (Remove All)

### 6.4 Tier 4: Circular Flat Remove (list items)

For removing individual items from a list.

**Widget**: `GtkButton` with `.circular` + `.flat` styles, `window-close-symbolic` or `edit-delete-symbolic` icon

```xml
<!-- Weather: Remove city from list -->
<object class="GtkButton" id="removeButton">
  <property name="icon-name">window-close-symbolic</property>
  <property name="valign">center</property>
  <property name="visible">false</property>
  <style>
    <class name="circular"/>
    <class name="flat"/>
  </style>
</object>
```

```xml
<!-- Text Editor: Remove from recents sidebar -->
<object class="GtkButton" id="remove">
  <property name="icon-name">window-close-symbolic</property>
  <property name="tooltip-text" translatable="yes">Remove</property>
  <style>
    <class name="circular"/>
    <class name="flat"/>
  </style>
</object>
```

```xml
<!-- Clocks: Delete alarm row -->
<object class="GtkButton">
  <property name="icon_name">edit-delete-symbolic</property>
  <style>
    <class name="circular"/>
    <class name="flat"/>
  </style>
</object>
```

**Used by**: Weather, Text Editor, Clocks, Nautilus

### 6.5 Tier 5: Menu-based actions

```xml
<menu>
  <section>
    <item>
      <attribute name="label" translatable="yes">_Clear History</attribute>
      <attribute name="action">win.clear</attribute>
      <attribute name="hidden-when">action-disabled</attribute>
    </item>
  </section>
</menu>
```

**Used by**: Calculator (Clear History), Loupe (Delete → win.trash), Nautilus (Move to Trash, Delete Permanently, Empty Trash)

### 6.6 Pattern Selection Guide

| Situation | Pattern | Widget | Style |
|-----------|---------|--------|-------|
| File operation, can undo | **Toast with Undo** | `AdwToast` | — |
| Preferences, destructive setting | **ButtonRow** | `AdwButtonRow` | `.destructive-action` |
| UI chrome, destructive action | **Destructive Button** | `GtkButton` | `.destructive-action` + `.pill` |
| Remove from list, small | **Circular Flat** | `GtkButton` | `.circular` + `.flat` |
| Menu item, destructive action | **Menu item** | `<item>` | `hidden-when="action-disabled"` |
| Warning/confirmation needed | **InfoBar (not dialog!)** | `GtkInfoBar` | `message-type="warning"` |

**Golden rule**: Prefer undo over confirmation. Only use confirmation dialogs when undo is truly impossible (e.g., permanent deletion from trash, clearing history).

**Icon reference**:
| Action | Icon |
|--------|------|
| Remove item from list | `window-close-symbolic` |
| Delete permanently | `edit-delete-symbolic` |
| Clear all / reset | `edit-clear-all-symbolic` |
| Move to trash | `user-trash-symbolic` |

---

## 7. Settings / Preferences

### 7.1 GSettings Schema

```xml
<schemalist>
  <schema id="org.example.MyApp" path="/org/example/MyApp/">
    <key name="dark-mode" type="b">
      <default>false</default>
      <summary>Use dark theme</summary>
    </key>
    <key name="font-size" type="i">
      <default>12</default>
      <summary>Editor font size</summary>
    </key>
  </schema>
</schemalist>
```

### 7.2 Preferences Dialog Structure

```
AdwPreferencesDialog { search-enabled: true; content-width: 600; }
└── AdwPreferencesPage
    ├── AdwPreferencesGroup { title: _("Appearance"); }
    │   ├── AdwSwitchRow / AdwActionRow / AdwComboRow / AdwSpinRow
    │   └── ...
    ├── AdwPreferencesGroup { title: _("Behavior"); }
    │   └── ...
    └── AdwPreferencesGroup
        └── AdwButtonRow { title: _("_Reset"); styles ["destructive-action"]; }
```

### 7.3 GSettings Binding

```c
g_settings_bind (settings, "dark-mode", switch, "active", G_SETTINGS_BIND_DEFAULT);
```

Or use custom widget with `schema-key` property for cleaner XML.

---

## 8. Feedback Patterns

| Pattern | Widget | When |
|---------|--------|------|
| **Toast** | `AdwToast` + `AdwToastOverlay` | Transient feedback, undo-able actions |
| **Banner** | `AdwBanner` | Persistent state (offline, syncing) |
| **Status Page** | `AdwStatusPage` | Empty/error state with CTA |
| **Dialog** | `AdwDialog`/`AdwWindow` | Complex input, critical confirmations |
| **Spinner** | `AdwSpinner` | Loading, indeterminate progress |
| **Progress** | `GtkProgressBar` | Determinate progress |

**Golden rule**: Prefer undo toasts over confirmation dialogs for destructive actions.

---

## 9. Framework & Language Tips

### 8.1 Rust (gtk4-rs + libadwaita)

**Recommended for new apps.** Used by Loupe (Image Viewer).

```rust
use gtk::prelude::*;
use adw::prelude::*;

fn build_ui(app: &adw::Application) {
    let window = adw::ApplicationWindow::new(app);
    let header = adw::HeaderBar::new();
    let toolbar = adw::ToolbarView::new();
    toolbar.add_top_bar(&header);

    let page = adw::PreferencesPage::new();
    let group = adw::PreferencesGroup::new();
    group.set_title("Appearance");
    let switch = adw::SwitchRow::new();
    switch.set_title("Dark Mode");
    group.add(&switch);
    page.add(&group);
    toolbar.set_content(Some(&page));
    window.set_content(Some(&toolbar));
}
```

**Crates**: `gtk4`, `adw`, `gio`, `glib`, `sourceview5` (text editors). Compile `.blp` via `blueprint-compiler` in build.rs.

**Gotchas**: Use `glib::Binding` or property bindings for settings. Subclass with `#[derive(glib::Properties)]`.

### 8.2 Python (PyGObject)

**Rapid prototyping, scripting apps.**

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
        toolbar = Adw.ToolbarView()
        toolbar.add_top_bar(header)
        self.set_content(toolbar)
```

**Packages**: `python3-gi`, `gir1.2-gtk-4.0`, `gir1.2-adw-1`. **Always** `gi.require_version()` first.

### 8.3 C (GTK 4 + libadwaita)

**Most core GNOME apps use this.** Best documentation.

```c
#include <gtk/gtk.h>
#include <adwaita.h>

static void my_app_activate(GApplication *app) {
    AdwApplicationWindow *window = ADW_APPLICATION_WINDOW(
        adw_application_window_new(GTK_APPLICATION(app)));
    AdwHeaderBar *header = ADW_HEADER_BAR(adw_header_bar_new());
    AdwToolbarView *toolbar = ADW_TOOLBAR_VIEW(adw_toolbar_view_new());
    adw_toolbar_view_add_top_bar(toolbar, GTK_WIDGET(header));
    adw_application_window_set_content(window, GTK_WIDGET(toolbar));
    gtk_window_present(GTK_WINDOW(window));
}
```

**Build**: Meson + `dependency('gtk4')` + `dependency('libadwaita-1')`.

### 8.4 Vala

**GNOME-native, compiles to C.** Used by Calculator.

```vala
public class MyApp : Adw.Application {
    protected override void activate() {
        var window = new Adw.ApplicationWindow(this);
        var header = new Adw.HeaderBar();
        var toolbar = new Adw.ToolbarView();
        toolbar.add_top_bar(header);
        window.set_content(toolbar);
        window.present();
    }
}
```

### 8.5 JavaScript (GJS)

**GNOME Shell extensions, some apps.** Used by Weather.

```javascript
import Adw from 'gi://Adw';
import Gtk from 'gi://Gtk';

const window = new Adw.ApplicationWindow({ application });
const header = new Adw.HeaderBar();
const toolbar = new Adw.ToolbarView();
toolbar.add_top_bar(header);
window.set_content(toolbar);
```

### 8.6 Blueprint (.blp) — UI Markup Language

**Recommended UI definition format.** Compiles to GtkBuilder XML.

```
using Gtk 4.0;
using Adw 1;

template $MyWidget: Adw.Bin {
  margin-top: 12;

  Gtk.Label {
    label: _("Hello");
    styles ["title"]
  }

  Button my_button {
    label: _("Click Me");
    clicked => $on_clicked_cb(template);
  }

  [top] Adw.HeaderBar { }
  [suffix] Gtk.Switch { valign: center; }

  sensitive: bind other_widget.active;
}
```

**Compile**: `blueprint-compiler compile file.blp --output file.ui`

---

## 10. File Structure

```
my-gnome-app/
├── data/
│   ├── org.example.MyApp.desktop.in
│   ├── org.example.MyApp.gschema.xml
│   ├── org.example.MyApp.metainfo.xml
│   └── icons/
├── src/
│   ├── main.c (or main.rs, main.py)
│   ├── my-app-window.blp
│   ├── my-app-preferences.blp
│   ├── my-app-window.c (logic)
│   └── widgets/
├── po/                    # Translations
├── meson.build
└── README.md
```

---

## 11. Anti-Patterns

| Don't | Do Instead |
|-------|-----------|
| Use `GtkCheckButton` directly in preferences | Use `AdwSwitchRow` or `CheckButton` in `[prefix]` of `ActionRow` |
| Use `GtkRadioButton` | Use `GtkCheckButton` with `group` property in `[prefix]` |
| Put title text directly in header bar | Use `AdwWindowTitle` widget |
| Stack multiple secondary windows | Use in-window navigation |
| Hard-code font families or sizes | Use `.title`, `.body`, `.caption` CSS classes |
| Confirmation dialogs for undoable actions | `AdwToast` with Undo button |
| Label + icon on content buttons | Icon OR label (outside header bars) |
| Custom config files | GSettings/GSchema |
| Skip access keys | Always `_` in labels + `use-underline: true` |
| Skip tooltips on header bar buttons | Always `tooltip-text` |
| Mix navigation patterns | Pick exactly ONE |
| Preferences in main window | `AdwPreferencesDialog` |
| `GtkWindow` | `AdwApplicationWindow` |
| `GtkHeaderBar` | `AdwHeaderBar` |

---

## 12. Build Checklist

- [ ] `AdwApplication` + `AdwApplicationWindow`
- [ ] `width-request: 360` minimum
- [ ] `AdwHeaderBar` with `AdwWindowTitle` centered
- [ ] `.flat` style header bar buttons, all with `tooltip-text`
- [ ] One clear navigation pattern
- [ ] Adaptive breakpoints defined
- [ ] `AdwPreferencesDialog` with GSettings backend, `search-enabled: true`
- [ ] `AdwSwitchRow` for binary, `AdwComboRow` for multi-option
- [ ] `AdwToastOverlay` wrapping content for transient messages
- [ ] Undo toasts instead of confirmation dialogs
- [ ] `AdwStatusPage` for empty states
- [ ] Follows system light/dark preference
- [ ] Symbolic icons for all UI controls
- [ ] Typography via CSS classes (not hard-coded)
- [ ] Header capitalization on controls, sentence case on descriptions
- [ ] Access keys (`_`) on all labeled controls
- [ ] `<control>comma` → Preferences
- [ ] `<control>q` → Quit (if not background app)

---

*Version 1.1.0 — Added Delete/Remove/Undo action library + wizard/carousel patterns from gnome-initial-setup & gnome-tour audits.* — Compiled from GNOME HIG v47 + source audits of 9 GNOME Core apps. Design tokens extracted from real widget configurations.*
