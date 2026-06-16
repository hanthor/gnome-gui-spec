# AdwToast + AdwToastOverlay

**Package**: libadwaita-1  
**Use**: Transient notifications at bottom of window.

## Setup: Wrap Content in ToastOverlay

```xml
<object class="AdwToastOverlay" id="toast_overlay">
  <property name="child">
    <!-- ALL window content -->
  </property>
</object>
```

**Blueprint**:
```
Adw.ToastOverlay toast_overlay {
  child: /* all content */;
}
```

## Simple Toast

**Python**:
```python
toast_overlay.add_toast(Adw.Toast.new("File saved."))
```

**Rust**:
```rust
let toast = adw::Toast::new("File saved.");
self.imp().toast_overlay.add_toast(toast);
```

**C**:
```c
adw_toast_overlay_add_toast(overlay, adw_toast_new(_("File saved.")));
```

## Toast with Undo Button

**Python**:
```python
toast = Adw.Toast.new(f"Deleted {filename}")
toast.set_button_label("Undo")
toast.set_priority(Adw.ToastPriority.HIGH)
toast.connect("button-clicked", lambda t: undo_delete(filename))
toast_overlay.add_toast(toast)
```

**Rust**:
```rust
let toast = adw::Toast::builder()
    .title(gettext("Image moved to trash"))
    .button_label(gettext("Undo"))
    .priority(adw::ToastPriority::High)
    .build();
toast.connect_button_clicked(move |_| { restore_file(); });
self.imp().toast_overlay.add_toast(toast);
```

**C**:
```c
AdwToast *toast = adw_toast_new_format(_("Deleted \"%s\""), filename);
adw_toast_set_button_label(toast, _("_Undo"));
adw_toast_set_priority(toast, ADW_TOAST_PRIORITY_HIGH);
adw_toast_overlay_add_toast(overlay, toast);
```

## Priority Levels
| Priority | Duration | Use |
|----------|----------|-----|
| `NORMAL` | ~3 seconds | Routine feedback |
| `HIGH` | ~8 seconds | Undo actions, important feedback |

## Rules
- Short title (1-5 words)
- Button only if directly relevant
- Position: bottom-center (automatic)
- Wrap **whole window** content in ToastOverlay

## See Also
- skills/delete-with-undo.md
- skills/toast-feedback.md
