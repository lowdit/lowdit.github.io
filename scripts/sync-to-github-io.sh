#!/usr/bin/env bash
# Copie la vitrine Hugo vers le clone lowdit.github.io (sans doc interne ni build).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${1:-$ROOT/../lowdit.github.io}"
rsync -a --delete \
  --exclude '.DS_Store' \
  --exclude 'public/' \
  --exclude 'docs/' \
  --exclude 'legacy-v1-html/' \
  --exclude 'DESIGN.md' \
  --exclude '.gitignore' \
  --exclude '.hugo_build.lock' \
  --exclude 'themes/minigo' \
  "$ROOT/" "$DEST/"
# CI : pas de symlink thème local
if [ -f "$DEST/go.mod" ]; then
  sed -i '' '/^replace /d' "$DEST/go.mod" 2>/dev/null || sed -i '/^replace /d' "$DEST/go.mod"
fi
echo "→ Synced to $DEST (go.mod replace stripped for CI)"
