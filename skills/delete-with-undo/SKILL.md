# Skill: Handle Destructive Actions

## The 4 Tiers

### Tier 1: Trash + Undo Toast (preferred for file ops)

**Python**:
```python
toast = Adw.Toast.new("Image moved to trash")
toast.set_button_label("Undo")
toast.set_priority(Adw.ToastPriority.HIGH)
toast.connect("button-clicked", lambda t: restore_from_trash())
toast_overlay.add_toast(toast)
```

**Rust** (Loupe pattern):
```rust
let toast = adw::Toast::builder()
    .title(gettext("Image moved to trash"))
    .button_label(gettext("Undo"))
    .priority(adw::ToastPriority::High)
    .build();
toast.connect_button_clicked(move |_| { restore_file(); });
self.window_add_toast(toast);
```

**Rules**: Toast at bottom-center. Short title. Only Undo button. Priority HIGH. NO confirmation dialog first.

### Tier 2: Destructive ButtonRow (in preferences)

**Blueprint**:
```
Adw.PreferencesGroup {
  Adw.ButtonRow {
    title: _("_Clear History");
    use-underline: true;
    styles ["destructive-action"];
    activated => $on_clear_cb(template);
  }
}
```

**XML**:
```xml
<object class="AdwButtonRow">
  <property name="title" translatable="yes">_Clear History</property>
  <property name="use-underline">True</property>
  <style><class name="destructive-action"/></style>
</object>
```

### Tier 3: Destructive Button (in UI chrome)

**Blueprint**:
```
Button remove_button {
  label: _("Remove");
  styles ["destructive-action", "pill"];
}
```

**XML**:
```xml
<object class="GtkButton">
  <property name="label" translatable="yes">Remove</property>
  <style><class name="destructive-action"/><class name="pill"/></style>
</object>
```

### Tier 4: Circular Flat Remove (list items)

**Blueprint**:
```
Button {
  icon-name: "window-close-symbolic";
  tooltip-text: _("Remove");
  styles ["circular", "flat"];
}
```

**XML**:
```xml
<object class="GtkButton">
  <property name="icon-name">window-close-symbolic</property>
  <property name="tooltip-text" translatable="yes">Remove</property>
  <style><class name="circular"/><class name="flat"/></style>
</object>
```

### Tier 5: Menu-based action

```xml
<item>
  <attribute name="label" translatable="yes">_Clear History</attribute>
  <attribute name="action">win.clear</attribute>
  <attribute name="hidden-when">action-disabled</attribute>
</item>
```

### InfoBar for Unsaved Changes

```xml
<object class="GtkInfoBar">
  <property name="message-type">warning</property>
  <property name="revealed">True</property>
  <property name="show-close-button">True</property>
  <!-- Bold title label + subtitle label -->
  <child type="action">
    <object class="GtkButton">
      <property name="label" translatable="yes">_Discard…</property>
      <property name="use-underline">True</property>
    </object>
  </child>
</object>
```

## Icon Reference
| Action | Icon |
|--------|------|
| Remove from list | `window-close-symbolic` |
| Delete permanently | `edit-delete-symbolic` |
| Clear all | `edit-clear-all-symbolic` |
| Move to trash | `user-trash-symbolic` |

## Golden Rule
**Prefer undo over confirmation.** Only use confirmation dialogs when undo is truly impossible.

## Real App References
- Loupe: trash + undo toast (src/widgets/image_window.rs)
- Text Editor: Clear History ButtonRow + Discard InfoBar (src/editor-preferences-dialog.ui, src/editor-info-bar.ui)
- Calendar: Delete Event ButtonRow (src/gui/event-editor/gcal-event-editor-dialog.blp)
- Clocks: Remove Alarm ButtonRow (data/ui/alarm-setup-dialog.ui)
- Weather: Circular flat remove (src/app/locationRow.ui)
