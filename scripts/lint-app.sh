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
  schema_ok=1
  while IFS= read -r schema; do
    # key names must be kebab-case
    bad_keys=$(grep -oE 'name="[^"]*"' "$schema" | grep -E 'name="[^"]*[A-Z_][^"]*"' || true)
    if [ -n "$bad_keys" ]; then
      finding "$schema: non-kebab-case key(s): $(echo "$bad_keys" | tr '\n' ' ')"
      schema_ok=0
    fi
    if command -v glib-compile-schemas >/dev/null 2>&1; then
      dir=$(mktemp -d); cp "$schema" "$dir/"
      if ! glib-compile-schemas --strict --dry-run "$dir" >/dev/null 2>&1; then
        finding "$schema: fails glib-compile-schemas --strict"
        glib-compile-schemas --strict --dry-run "$dir" 2>&1 | head -5 | sed 's/^/      /'
        schema_ok=0
      fi
      rm -rf "$dir"
    fi
  done <<< "$schemas"
  [ "$schema_ok" = 1 ] && echo "  ok ($(echo "$schemas" | wc -l) schema(s))"
else
  echo "  (no .gschema.xml — apps that persist state should have one)"
fi

report_hits() { # $1=hits $2=advice $3=max-lines
  if [ -n "$1" ]; then
    fail=1
    echo "$1" | head -"${3:-10}" | sed 's/^/  ✗ /'
    echo "      → $2"
  else
    echo "  ok"
  fi
}

section "Deprecated widgets"
deprecated='GtkDialog|GtkMessageDialog|GtkFileChooserDialog|AdwFlap|AdwLeaflet|AdwSqueezer|GtkAssistant'
hits=$(grep -rnE "$deprecated" --include='*.blp' --include='*.ui' --include='*.py' --include='*.rs' --include='*.c' --include='*.vala' --include='*.js' . 2>/dev/null | grep -v -e build/ -e target/ || true)
report_hits "$hits" "use AdwDialog/AdwAlertDialog, GtkFileDialog, OverlaySplitView/NavigationSplitView, AdwNavigationView" 20

section "Hardcoded colors in UI/CSS"
hits=$(grep -rnE '#[0-9a-fA-F]{6}\b|rgba?\(' --include='*.css' --include='*.blp' --include='*.ui' . 2>/dev/null | grep -v -e build/ -e '@' || true)
report_hits "$hits" "prefer named Adwaita colors (@accent_bg_color, @error_color, …)"

section "Ellipsis"
# UI files: any '...' is wrong. Source files: only inside string literals.
hits=$(
  { grep -rn '\.\.\.' --include='*.blp' --include='*.ui' . 2>/dev/null
    grep -rnE '"[^"]*\.\.\.[^"]*"' --include='*.py' --include='*.rs' --include='*.c' --include='*.vala' --include='*.js' \
      --exclude-dir=tests --exclude-dir=test --exclude-dir=docs . 2>/dev/null
  } | grep -v -e build/ -e target/ || true)
report_hits "$hits" "use the … character, not three dots"

section "Untranslated tooltips in code-built UI"
hits=$(grep -rnE 'set_tooltip_text\s*\(\s*(Some\s*\(\s*)?"' --include='*.py' --include='*.rs' --include='*.c' --include='*.vala' --include='*.js' . 2>/dev/null | grep -v -e build/ -e target/ || true)
report_hits "$hits" 'wrap user-visible strings in gettext: _("…") / tr("…")' 15

section "Icon names"
icon_out=$(bash "$SPEC_DIR/scripts/check-icons.sh" .) || fail=1
echo "$icon_out" | sed 's/^/  /'

echo
if [ "$fail" = 0 ]; then
  echo "lint-app: clean. For the full 12-category audit read skills/hig-audit/SKILL.md"
else
  echo "lint-app: findings above. For the full 12-category audit read skills/hig-audit/SKILL.md"
fi
exit $fail
