# Design Tokens: Icons

## Icon Types

| Type | Suffix | Use |
|------|--------|-----|
| **Symbolic** | `-symbolic` | UI controls — monochrome, theme-adaptive |
| **Full-color** | (no suffix) | App icons, content thumbnails only |

## Common Symbolic Icons

### Navigation
| Icon | Use |
|------|-----|
| `open-menu-symbolic` | Hamburger/primary menu |
| `go-next-symbolic` | Navigate forward, ButtonRow arrow |
| `go-previous-symbolic` | Navigate back |
| `prev-large-symbolic` | Carousel previous |
| `next-large-symbolic` | Carousel next |
| `pan-down-symbolic` | Dropdown indicator |

### Actions
| Icon | Use |
|------|-----|
| `document-open-symbolic` | Open file |
| `document-new-symbolic` | New document |
| `tab-new-symbolic` | New tab |
| `view-refresh-symbolic` | Refresh/reload |
| `info-symbolic` | Info/help |
| `info-outline-symbolic` | Properties/details |
| `view-restore-symbolic` | Leave fullscreen |
| `edit-find-symbolic` | Search |
| `system-search-symbolic` | System search |
| `edit-clear-symbolic` | Clear input |
| `edit-clear-all-symbolic` | Clear all |
| `view-pin-symbolic` | Pin |
| `list-add-symbolic` | Add to list |

### Destructive
| Icon | Use |
|------|-----|
| `window-close-symbolic` | Remove from list |
| `edit-delete-symbolic` | Delete permanently |
| `user-trash-symbolic` | Move to trash |

### Status
| Icon | Use |
|------|-----|
| `checkmark-symbolic` | Selected/active indicator |
| `object-select-symbolic` | Installed/selected state |
| `folder-download-symbolic` | Downloads/tasks |
| `folder-symbolic` | Folder/open |
| `view-grid-symbolic` | Grid view |
| `view-list-symbolic` | List view |
| `package-x-generic-symbolic` | Package/empty state |
| `image-missing-symbolic` | Missing image |

### View Switcher (by app)
| App | Icons |
|-----|-------|
| Mouse | `input-mouse-symbolic`, `input-touchpad-symbolic`, `input-pointing-stick-symbolic` |
| Clocks | `globe-symbolic`, `alarm-symbolic`, `stopwatch-symbolic`, `timer-symbolic` |
| Calendar | Calendar icons (Month/Week/Year) |
| Tavern | `view-grid-symbolic`, `folder-symbolic`, `system-search-symbolic`, `view-list-symbolic` |

## Rules
- Always use symbolic icons for UI widgets
- Only use full-color for app icons and image content
- Set `pixel-size` for non-standard sizes (default is 16px)
- Common sizes: `16`, `24`, `32`, `48`, `64`, `96`
