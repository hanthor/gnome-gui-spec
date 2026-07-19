---
name: gnome-search-pattern
description: Add search to a GNOME app — header-bar search button toggling a GtkSearchBar with SearchEntry, live filtering, Ctrl+F, and empty "no results" state. Use when adding search or filtering to lists or content views.
---

# Skill: Search

Standard GNOME search: a magnifier toggle button in the header bar reveals a
`GtkSearchBar` under it; results filter live as the user types.

## Blueprint

```
Adw.ToolbarView {
  [top]
  Adw.HeaderBar {
    [start]
    ToggleButton search_button {
      icon-name: "edit-find-symbolic";
      tooltip-text: _("Search");
    }
  }

  [top]
  SearchBar search_bar {
    search-mode-enabled: bind search_button.active bidirectional;
    key-capture-widget: template;   // typing anywhere starts a search

    Adw.Clamp {
      maximum-size: 400;
      SearchEntry search_entry {
        placeholder-text: _("Search items");
        hexpand: true;
      }
    }
  }

  content: Stack results_stack {
    StackPage { name: "results"; child: ScrolledWindow { ListView list_view {} }; }
    StackPage {
      name: "empty";
      child: Adw.StatusPage {
        icon-name: "edit-find-symbolic";
        title: _("No Results Found");
        description: _("Try a different search");
      };
    }
  };
}
```

`search_bar.connect_entry(search_entry)` in code (or it finds it automatically
if the entry is a direct descendant).

## Wiring + filtering

```python
self.create_action('search', lambda *_: self.search_button.set_active(True),
                   ['<primary>f'])

self.filter = Gtk.CustomFilter.new(self._match, None)
filter_model = Gtk.FilterListModel(model=self.store, filter=self.filter)
self.search_entry.connect('search-changed', self._on_search_changed)

def _on_search_changed(self, entry):
    self.query = entry.get_text().strip().lower()
    self.filter.changed(Gtk.FilterChange.DIFFERENT)
    empty = self.query and filter_model.get_n_items() == 0
    self.results_stack.set_visible_child_name('empty' if empty else 'results')

def _match(self, item, _):
    return not self.query or self.query in item.title.lower()
```

`Escape` closes the bar automatically (SearchBar handles it).

## Rules

- Filter as the user types; no Search button to press. Debounce only if
  matching is expensive (SearchEntry has a built-in `search-delay`).
- Match should be case-insensitive and substring-based at minimum.
- `key-capture-widget` enables type-to-search — expected in browsing apps.
- Show `AdwStatusPage` "No Results Found" when the query yields nothing.
- Persistent filtering of a sidebar list can use an always-visible
  SearchEntry above the list instead of a SearchBar (see Contacts, Characters).

Full guidance: `reference/hig/search.md`.
