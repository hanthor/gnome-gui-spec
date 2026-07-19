# GtkShortcutController

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
