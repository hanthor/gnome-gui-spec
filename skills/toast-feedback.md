# Skill: Toast Notifications & Feedback

## Goal: Show transient feedback with optional undo actions.

## Setup: Wrap Everything in ToastOverlay

```xml
<object class="AdwToastOverlay" id="toast_overlay">
  <property name="child">
    <!-- ALL window content goes here -->
  </property>
</object>
```

**Wrap the entire window content**, not individual sections.

## Simple Toast

**Python**:
```python
self.toast_overlay.add_toast(Adw.Toast.new("File saved."))
```

**Rust**:
```rust
let toast = adw::Toast::new("File saved.");
self.imp().toast_overlay.add_toast(toast);
```

**C**:
```c
adw_toast_overlay_add_toast (overlay, adw_toast_new (_("File saved.")));
```

## Toast with Undo Button

**Python**:
```python
toast = Adw.Toast.new(f"Deleted {filename}")
toast.set_button_label("Undo")
toast.set_priority(Adw.ToastPriority.HIGH)
toast.connect("button-clicked", lambda t, filename=filename: undo_delete(filename))
toast_overlay.add_toast(toast)
```

**Rust** (Loupe pattern):
```rust
let toast = adw::Toast::builder()
    .title(gettext("Image moved to trash"))
    .button_label(gettext("Undo"))
    .priority(adw::ToastPriority::High)
    .build();
toast.connect_button_clicked(glib::clone!(#[strong] file, move |_| {
    restore_from_trash(&file);
}));
self.imp().toast_overlay.add_toast(toast);
```

**C**:
```c
AdwToast *toast = adw_toast_new_format (_("Deleted \"%s\""), filename);
adw_toast_set_button_label (toast, _("_Undo"));
adw_toast_set_action_name (toast, "app.undo");
adw_toast_set_priority (toast, ADW_TOAST_PRIORITY_HIGH);
adw_toast_overlay_add_toast (overlay, toast);
```

## Priority Levels
| Priority | Use |
|----------|-----|
| `NORMAL` | Routine feedback ("File saved", "Copied") |
| `HIGH` | Important feedback, undo actions ("Deleted", "Trashed") |

## When to Use Toast vs Banner vs Dialog
| Pattern | Widget | Use Case |
|---------|--------|----------|
| **Toast** | `AdwToast` | Transient event feedback, undo actions |
| **Banner** | `AdwBanner` | Persistent state (offline, syncing, read-only) |
| **Dialog** | `AdwDialog` | Complex input, blocking choices |
| **Status Page** | `AdwStatusPage` | Empty/error states |

## Toast Rules
- Short title (1-5 words)
- Button only if directly relevant (Undo, Retry)
- Position: bottom-center of window (automatic)
- Auto-dismisses after a few seconds (HIGH priority stays longer)
- Do NOT show toasts for errors that need user action — use banners

## Banner Example (persistent state)
```xml
<object class="Adw.Banner">
  <property name="title" translatable="yes">Offline</property>
  <property name="button-label" translatable="yes">_Retry</property>
</object>
```

## Real App References
- Loupe: trash + undo toast (src/widgets/image_window.rs)
- Clocks, Loupe: ToastOverlay wrapping whole content
- gnome-calendar: Banner for read-only calendar
