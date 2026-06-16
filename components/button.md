# GtkButton (Style Reference)

**Package**: gtk4  
**Use**: Action buttons throughout the app.

## Style Combinations

### Flat (Header Bar)
```
Button { icon-name: "document-new-symbolic"; tooltip-text: _("New"); styles ["flat"]; }
```

### Suggested Action (Primary CTA)
```
Button { label: _("_Save"); styles ["suggested-action"]; }
```

### Destructive Action
```
Button { label: _("_Remove"); styles ["destructive-action"]; }
```

### Pill (Standalone CTA)
```
Button { label: _("_Install"); styles ["suggested-action", "pill"]; }
```

### Large Pill (Welcome Screen)
```
Button { label: _("_Get Started"); styles ["suggested-action", "large-button", "pill"]; }
```

### Circular Flat (Remove from list)
```
Button { icon-name: "window-close-symbolic"; tooltip-text: _("Remove"); styles ["circular", "flat"]; }
```

### Circular Suggested (Tour navigation)
```
Button { icon-name: "next-large-symbolic"; tooltip-text: _("Start"); styles ["suggested-action", "circular"]; }
```

### Linked (Toggle group)
```
Button { label: _("_Left"); styles ["linked"]; }
Button { label: _("_Right"); styles ["linked"]; }
```

## XML Reference
```xml
<!-- Flat -->
<style><class name="flat"/></style>

<!-- Suggested -->
<style><class name="suggested-action"/></style>

<!-- Destructive -->
<style><class name="destructive-action"/></style>

<!-- Pill CTA -->
<style><class name="suggested-action"/><class name="pill"/></style>

<!-- Circular flat -->
<style><class name="circular"/><class name="flat"/></style>

<!-- Linked -->
<style><class name="linked"/></style>
```

## Rules
- **Header bar**: flat style, icon OR icon+label, must have tooltip
- **Content area**: icon OR label (not both)
- **Labels**: header capitalization, imperative verbs
- **Same width**: adjacent buttons should be same width
- **Invalid**: make insensitive, don't show error on click

## See Also
- components/header-bar.md
- skills/delete-with-undo.md
