#!/usr/bin/env bash
# Logo + favicons Lowdit org → assets/ (Minigo resources.Get). Source : lowdit-brand.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BRAND="${1:-$ROOT/../lowdit-brand}"
mkdir -p "$ROOT/assets/logos" "$ROOT/assets/favicons/lowdit"
cp "$BRAND/logos/lowdit/lowdit-mark.png" "$ROOT/assets/logos/lowdit.png"
cp "$BRAND/logos/lowdit/favicons/"*.png "$ROOT/assets/favicons/lowdit/"
echo "→ assets/logos/lowdit.png + assets/favicons/lowdit/*"
