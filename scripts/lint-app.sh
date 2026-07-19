#!/bin/bash
# lint-app.sh — quick HIG/infrastructure lint for a GTK4/libadwaita app.
# Runs the checks that are automatable; the rest need skills/hig-audit.
#
# Usage: scripts/lint-app.sh [path-to-app-source]   (default: .)
# Exit:  0 = clean, 1 = findings
set -uo pipefail

TARGET="${1:-.}"
SPEC_DIR="$(cd "$(dirname "$0")/.." && pwd)"
fail=0
finding() { fail=1; printf '  ✗ %s\n' "$1"; }
section() { printf '\n== %s ==\n' "$1"; }

cd "$TARGET"

section "Blueprint syntax"
if command -v blueprint-compiler >/dev/null 2>&1; then
  found_blp=0
  while IFS= read -r blp; do
    found_blp=1
    if ! blueprint-compiler compile --output /dev/null "$blp" >/dev/null 2>&1; then
      finding "does not compile: $blp"
      blueprint-compiler compile --output /dev/null "$blp" 2>&1 | head -5 | sed 's/^/      /'
    fi
  done < <(find . -name '*.blp' -not -path '*/build/*' -not -path '*/_build/*')
  [ "$found_blp" = 0 ] && echo "  (no .blp files)"
else
  echo "  (blueprint-compiler not installed — skipped)"
fi

section "GSettings schemas"
schemas=$(find . -name '*.gschema.xml' -not -path '*/build/*' -not -path '*/_build/*')
if [ -n "$schemas" ]; then
  while IFS= read -r schema; do
    # key names must be kebab-case
    bad_keys=$(grep -oE 'name="[^"]*"' "$schema" | grep -E 'name="[^"]*[A-Z_][^"]*"' || true)
    [ -n "$bad_keys" ] && finding "$schema: non-kebab-case key(s): $(echo "$bad_keys" | tr '\n' ' ')"
    if command -v glib-compile-schemas >/dev/null 2>&1; then
      dir=$(mktemp -d); cp "$schema" "$dir/"
      glib-compile-schemas --strict --dry-run "$dir" 2>&1 | grep -v '^$' | while read -r l; do echo "      $l"; done
      glib-compile-schemas --strict --dry-run "$dir" >/dev/null 2>&1 || finding "$schema: fails glib-compile-schemas --strict"
      rm -rf "$dir"
    fi
  done <<< "$schemas"
else
  echo "  (no .gschema.xml — apps that persist state should have one)"
fi

section "Deprecated widgets"
deprecated='GtkDialog|GtkMessageDialog|GtkFileChooserDialog|AdwFlap|AdwLeaflet|AdwSqueezer|GtkAssistant'
hits=$(grep -rnE "$deprecated" --include='*.blp' --include='*.ui' --include='*.py' --include='*.rs' --include='*.c' --include='*.vala' --include='*.js' . 2>/dev/null | grep -v -e build/ -e target/ || true)
if [ -n "$hits" ]; then
  echo "$hits" | head -20 | while IFS= read -r h; do finding "$h"; done
  echo "      → use AdwDialog/AdwAlertDialog, GtkFileDialog, OverlaySplitView/NavigationSplitView, AdwNavigationView"
else
  echo "  ok"
fi

section "Hardcoded colors in UI/CSS"
hits=$(grep -rnE '#[0-9a-fA-F]{6}\b|rgba?\(' --include='*.css' --include='*.blp' --include='*.ui' . 2>/dev/null | grep -v -e build/ -e '@' || true)
if [ -n "$hits" ]; then
  echo "$hits" | head -10 | while IFS= read -r h; do finding "$h"; done
  echo "      → prefer named Adwaita colors (@accent_bg_color, @error_color, …)"
else
  echo "  ok"
fi

section "Ellipsis"
hits=$(grep -rn '\.\.\.' --include='*.blp' --include='*.ui' . 2>/dev/null | grep -v build/ || true)
if [ -n "$hits" ]; then
  echo "$hits" | head -10 | while IFS= read -r h; do finding "$h"; done
  echo "      → use the … character, not three dots"
else
  echo "  ok"
fi

section "Icon names"
bash "$SPEC_DIR/scripts/check-icons.sh" . | sed 's/^/  /' || fail=1

echo
if [ "$fail" = 0 ]; then
  echo "lint-app: clean. For the full 12-category audit read skills/hig-audit/SKILL.md"
else
  echo "lint-app: findings above. For the full 12-category audit read skills/hig-audit/SKILL.md"
fi
exit $fail
