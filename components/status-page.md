# AdwStatusPage

**Package**: libadwaita-1  
**Use**: Empty state, error state, or welcome page.

## Blueprint
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

## XML
```xml
<object class="AdwStatusPage">
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

## Properties
| Property | Type | Required |
|----------|------|----------|
| `title` | string | **Yes** |
| `description` | string | No (recommended) |
| `icon-name` | string | No (recommended) |
| `child` | widget | No (action button) |

## Code (Rust)
```rust
let page = adw::StatusPage::new();
page.set_title("Nothing Installed");
page.set_description("Packages you install will appear here.");
page.set_icon_name(Some("package-x-generic-symbolic"));
```

## Code (Python)
```python
page = Adw.StatusPage()
page.set_title("Nothing Installed")
page.set_description("Packages will appear here.")
page.set_icon_name("package-x-generic-symbolic")
```

## See Also
- skills/empty-state.md
