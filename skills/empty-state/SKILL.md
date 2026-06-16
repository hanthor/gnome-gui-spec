# Skill: Empty States & Loading Pages

## Goal: Show appropriate UI when there's no content or content is loading.

## Empty State (AdwStatusPage)

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
    styles ["suggested-action", "large-button", "pill"];
  };
}
```

**XML**:
```xml
<object class="AdwStatusPage" id="empty">
  <property name="title" translatable="yes">Nothing Installed</property>
  <property name="description" translatable="yes">Packages you install will appear here.</property>
  <property name="icon-name">package-x-generic-symbolic</property>
  <property name="child">
    <object class="GtkButton">
      <property name="label" translatable="yes">_Install Packages</property>
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
| `title` | string | **Required** — main message |
| `description` | string | Optional — instruction text |
| `icon-name` | string | Symbolic icon (recommended) |
| `child` | widget | Action button (optional) |

## Loading State

**Blueprint**:
```
Stack loading_stack {
  transition-type: crossfade;

  StackPage {
    name: "loading";
    child: Box {
      orientation: vertical;
      valign: center;
      halign: center;
      spacing: 12;

      Gtk.Spinner {
        width-request: 32;
        height-request: 32;
      }

      Label {
        label: _("Loading packages…");
        styles ["dim-label"];
      }
    };
  }

  StackPage {
    name: "content";
    child: /* actual content */;
  }
}
```

## Stack-Based State Switching
Always use `GtkStack` + `transition-type: crossfade` to switch between loading/empty/content states. Never overlay spinners on content.

**Three standard pages**:
| StackPage name | When | Contents |
|---|---|---|
| `"loading"` | Initial load | Spinner + label |
| `"empty"` | No data | AdwStatusPage |
| `"content"` | Data loaded | Actual content |

## Large Loading (initial app load)
```
Box {
  orientation: vertical;
  valign: center;
  halign: center;
  spacing: 6;

  Gtk.Spinner {
    width-request: 64;
    height-request: 64;
    margin-bottom: 18;
  }

  Label {
    label: _("Loading…");
    styles ["title-3"];
  }

  ProgressBar {    /* optional: determinate progress */
    width-request: 280;
    valign: center;
  }
}
```

## Rules
- Spinner size: 32px (inline), 64px (full-page loading)
- Always pair spinner with a text label
- Use `crossfade` transition for smooth state changes
- CTA buttons on empty states: `suggested-action` + `large-button` + `pill`

## Real App References
- gnome-text-editor/src/editor-window.ui (empty state + loading)
- gnome-clocks/data/ui/window.ui
- gnome-weather/data/window.ui
- Tavern: src/browse-page.blp, src/task-panel.blp, src/installed-page.blp
