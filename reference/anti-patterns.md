# Anti-Patterns & Build Checklist

## Anti-Patterns

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

## Build Checklist

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
