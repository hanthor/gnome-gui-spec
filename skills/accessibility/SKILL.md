---
name: gnome-accessibility
description: Make a GTK4/libadwaita app accessible — accessible labels and roles, tooltips on icon-only buttons, keyboard navigation, contrast, and testing with Orca/Accerciser. Use when fixing a11y issues or running the accessibility category of a HIG audit.
---

# Skill: Accessibility

GTK4 exposes UI over AT-SPI automatically — standard widgets with visible
labels need nothing. Work is needed where the visual and semantic layers
diverge.

## The big five (cover ~90% of violations)

1. **Icon-only buttons need both tooltip and label**:
   ```
   Button {
     icon-name: "user-trash-symbolic";
     tooltip-text: _("Delete");           // sighted users
     accessibility { label: _("Delete"); } // screen readers (GTK usually
   }                                        // derives it from tooltip, but be explicit)
   ```

2. **Images and custom drawing need roles**:
   ```
   DrawingArea {
     accessibility { label: _("Waveform of the current recording"); }
   }
   ```
   Decorative images: `Image { accessibility { role: presentation; } }`

3. **Inputs without visible labels**:
   ```
   SearchEntry { accessibility { label: _("Search contacts"); } }
   ```
   With a visible label elsewhere, relate them:
   `accessibility { labelled-by: my_label; }`

4. **Everything reachable by keyboard**: Tab order follows widget order —
   restructure containers rather than fighting focus. Custom interactive
   widgets need `focusable: true` and key handling. Never remove focus
   outlines in CSS.

5. **Don't convey state by color alone**: pair color with an icon, label, or
   style (e.g. error rows get `error` class AND an icon + text).

## Additional rules

- Respect system settings: never hard-code font sizes (use classes from
  `tokens/typography.md`); test at 200% text scaling and with High Contrast.
- Announce dynamic changes: toasts are announced automatically; for custom
  live regions use `Gtk.Accessible.announce()` (GTK ≥ 4.14).
- Contrast: 4.5:1 minimum for text — the Adwaita palette meets this; custom
  colors must be checked in both light and dark.
- Touch targets ≥ 44×44 logical px for primary controls.

## Audit greps

```bash
# icon-only buttons missing tooltips (review hits manually)
grep -rn 'icon-name' --include='*.blp' . | grep -v tooltip
# custom drawing without accessibility block
grep -rn 'DrawingArea' --include='*.blp' -A3 . | grep -v accessibility
# focus outline removal (should be empty)
grep -rn 'outline.*none' --include='*.css' .
```

## Testing

- **Orca** (Super+Alt+S): can every view be understood and operated eyes-free?
- **Keyboard only**: unplug the mouse; complete the app's primary task.
- **Accerciser** or GTK inspector (Ctrl+Shift+D → Accessibility tab): check
  the computed label/role of every interactive widget.
- **High contrast + large text**: Settings → Accessibility.

Full guidance: `reference/hig/accessibility.md`.
