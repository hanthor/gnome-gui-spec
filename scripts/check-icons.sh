#!/bin/bash
# check-icons.sh — validate symbolic icon names used in a GTK4/libadwaita app
# against the Adwaita icon catalog in this repo (reference/icons.md).
#
# Usage: scripts/check-icons.sh [path-to-app-source]   (default: .)
# Exit:  0 = all icons valid, 1 = unknown icons found
set -euo pipefail

TARGET="${1:-.}"
SPEC_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CATALOG="$SPEC_DIR/reference/icons.md"

[ -f "$CATALOG" ] || { echo "error: icon catalog not found at $CATALOG" >&2; exit 2; }

# Icon names in the catalog: markdown lines like "- `go-next-symbolic`"
known=$(grep -oE '`[a-z0-9][a-z0-9.-]*-symbolic`' "$CATALOG" | tr -d '`' | sort -u)

# Icon references in the target: .blp/.ui/.xml/source files
used=$(grep -rhoE "[a-z0-9][a-z0-9.-]*-symbolic" "$TARGET" \
  --include='*.blp' --include='*.ui' --include='*.xml' \
  --include='*.py' --include='*.rs' --include='*.c' --include='*.h' \
  --include='*.vala' --include='*.js' --include='*.ts' \
  --exclude-dir=build --exclude-dir=_build --exclude-dir=.git --exclude-dir=target \
  2>/dev/null | sort -u || true)

[ -n "$used" ] || { echo "no symbolic icon references found under $TARGET"; exit 0; }

missing=$(comm -23 <(echo "$used") <(echo "$known"))

# App's own installed icons (data/icons/**) are fine even if not in Adwaita
if [ -d "$TARGET/data/icons" ]; then
  own=$(find "$TARGET/data/icons" -name '*-symbolic.svg' -exec basename {} .svg \; | sort -u)
  [ -n "$own" ] && missing=$(comm -23 <(echo "$missing") <(echo "$own"))
fi

total=$(echo "$used" | wc -l)
if [ -z "$missing" ]; then
  echo "OK: all $total symbolic icon names found in Adwaita catalog"
  exit 0
fi

echo "Unknown icons (not in Adwaita catalog or app's data/icons):"
while IFS= read -r icon; do
  [ -z "$icon" ] && continue
  echo "  ✗ $icon"
  # Suggest close matches by shared prefix words
  stem=$(echo "$icon" | sed 's/-symbolic$//' | cut -d- -f1)
  suggestions=$(echo "$known" | grep -m3 -- "$stem" || true)
  [ -n "$suggestions" ] && echo "$suggestions" | sed 's/^/      maybe: /'
done <<< "$missing"
echo
echo "$(echo "$missing" | grep -c .) unknown of $total used. If an icon ships with the app, put it in data/icons/."
exit 1
