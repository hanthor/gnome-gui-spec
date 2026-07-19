---
name: gnome-about-dialog
description: Add a standard AdwAboutDialog wired to app metadata, plus the AppStream metainfo file it should share data with. Use when adding an About entry, release notes, credits, or preparing app metadata.
---

# Skill: About Dialog + AppStream Metainfo

Every GNOME app has an "About <App>" item last in its primary menu, opening an
`AdwAboutDialog`.

## Menu entry

```
menu primary_menu {
  section {
    item { label: _("_About My App"); action: "app.about"; }
  }
}
```

Label is "About <full app name>", always the last item, no `…`.

## Preferred: build from metainfo

If the app ships AppStream metainfo (it should), let libadwaita read it —
release notes, developer, website all come from one place:

```python
def _on_about(self, action, param):
    about = Adw.AboutDialog.new_from_appdata(
        '/org/example/MyApp/org.example.MyApp.metainfo.xml', '1.2.0')
    about.set_copyright('© 2026 Developer')
    about.present(self.props.active_window)
```

(Requires the metainfo XML in gresources.) Rust:
`adw::AboutDialog::from_appdata(path, Some("1.2.0"))`.

## Manual construction (no metainfo yet)

```python
about = Adw.AboutDialog(
    application_name='My App',
    application_icon='org.example.MyApp',   # = app ID
    version='1.2.0',
    developer_name='Jane Developer',        # person or team, not company boilerplate
    developers=['Jane Developer', 'Sam Contributor'],
    designers=['Alex Designer'],
    translator_credits=_('translator-credits'),  # translated by each locale
    license_type=Gtk.License.GPL_3_0,
    website='https://example.org/myapp',
    issue_url='https://github.com/example/myapp/issues',
)
about.add_link(_("_Documentation"), "https://example.org/docs")
about.present(self.props.active_window)
```

## Minimal metainfo (data/org.example.MyApp.metainfo.xml.in)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<component type="desktop-application">
  <id>org.example.MyApp</id>
  <metadata_license>CC0-1.0</metadata_license>
  <project_license>GPL-3.0-or-later</project_license>
  <name>My App</name>
  <summary>Do one thing well</summary>
  <description><p>Longer description for software centers.</p></description>
  <developer id="org.example"><name>Jane Developer</name></developer>
  <url type="homepage">https://example.org/myapp</url>
  <url type="bugtracker">https://github.com/example/myapp/issues</url>
  <launchable type="desktop-id">org.example.MyApp.desktop</launchable>
  <content_rating type="oars-1.1"/>
  <releases>
    <release version="1.2.0" date="2026-07-19">
      <description><p>What changed, user-facing wording.</p></description>
    </release>
  </releases>
</component>
```

Validate: `appstreamcli validate data/*.metainfo.xml.in`

## Checklist
- [ ] Menu item "About <App Name>", last in menu
- [ ] `application_icon` = app ID
- [ ] Version matches `meson.project_version()`
- [ ] `issue_url` set (gives the dialog a Report an Issue row)
- [ ] Metainfo validates with appstreamcli

Related: `skills/flatpak-packaging/SKILL.md` (metainfo is required for Flathub).
