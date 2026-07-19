---
name: gnome-shortcuts-window
description: Add a Keyboard Shortcuts help window (Ctrl+question) listing all app accelerators, plus the standard GNOME accelerator set. Use when wiring keyboard shortcuts or the Keyboard Shortcuts menu item.
---

# Skill: Keyboard Shortcuts Window

The "Keyboard Shortcuts" item in the primary menu (accelerator
`Ctrl+?` / `<primary>question`) opens a searchable shortcuts overview.

## libadwaita ≥ 1.6: AdwShortcutsDialog (preferred)

```
using Gtk 4.0;
using Adw 1;

Adw.ShortcutsDialog shortcuts_dialog {
  Adw.ShortcutsSection {
    title: _("General");
    Adw.ShortcutsItem { title: _("Show Shortcuts"); accelerator: "<primary>question"; }
    Adw.ShortcutsItem { title: _("Preferences");    accelerator: "<primary>comma"; }
    Adw.ShortcutsItem { title: _("Quit");           accelerator: "<primary>q"; }
  }
  Adw.ShortcutsSection {
    title: _("Documents");
    Adw.ShortcutsItem { title: _("New Document");   accelerator: "<primary>n"; }
    Adw.ShortcutsItem { title: _("Save");           accelerator: "<primary>s"; }
  }
}
```

Older libadwaita: use `Gtk.ShortcutsWindow` (same structure with
`GtkShortcutsSection`/`Group`/`Shortcut`; note it is deprecated in GTK 4.18+).

## Wiring

```python
self.create_action('shortcuts', self._on_shortcuts, ['<primary>question'])

def _on_shortcuts(self, action, param):
    builder = Gtk.Builder.new_from_resource('/org/example/MyApp/shortcuts.ui')
    builder.get_object('shortcuts_dialog').present(self.props.active_window)
```

## Standard GNOME accelerators (use these, don't invent)

| Accelerator | Action | | Accelerator | Action |
|---|---|---|---|---|
| `<primary>n` | New window/doc | | `<primary>f` | Find |
| `<primary>o` | Open | | `<primary>h` | Find and replace |
| `<primary>s` | Save | | `<primary>z` / `<primary><shift>z` | Undo / Redo |
| `<primary><shift>s` | Save as | | `<primary>x`/`c`/`v` | Cut/Copy/Paste |
| `<primary>p` | Print | | `<primary>a` | Select all |
| `<primary>w` | Close tab/window | | `<primary>plus`/`minus`/`0` | Zoom in/out/reset |
| `<primary>q` | Quit | | `F1` | Help |
| `<primary>comma` | Preferences | | `F9` | Toggle sidebar |
| `<primary>question` | Shortcuts | | `F10` | Open primary menu |
| `<primary>t` | New tab | | `F11` | Fullscreen |
| `<primary>Page_Down`/`Page_Up` | Next/previous tab | | `Escape` | Cancel/close |

Rules:
- Every menu item that has a shortcut shows it automatically (GMenu does this).
- Never override the standard set with different meanings.
- Alt+letter mnemonics come free from `use-underline: true` + `_` in labels.

Full table: `reference/hig/keyboard.md`.
