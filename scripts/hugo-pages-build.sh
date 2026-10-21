#!/usr/bin/env bash
# Build Hugo site for GitHub Pages — auto exampleSite vs racine.
set -euo pipefail

ROOT="${HUGO_ROOT:-$(pwd)}"
cd "$ROOT"

resolve_site_dir() {
  if [ -n "${HUGO_SITE_DIR:-}" ]; then
    echo "$HUGO_SITE_DIR"
    return
  fi
  if [ -f .github/hugo-site-dir ]; then
    tr -d ' \n\r' < .github/hugo-site-dir
    return
  fi
  if [ -f hugo.toml ] || [ -f config.toml ] || [ -f config/_default/hugo.toml ]; then
    echo "."
    return
  fi
  if [ -f exampleSite/hugo.toml ] || [ -f exampleSite/config.toml ]; then
    echo "exampleSite"
    return
  fi
  echo "ERROR: No Hugo config at repo root or exampleSite/" >&2
  exit 1
}

SITE_DIR="$(resolve_site_dir)"
BASE_URL="${1:-}"

if [ -z "$BASE_URL" ]; then
  echo "Usage: hugo-pages-build.sh <baseURL>" >&2
  exit 1
fi

echo "→ Hugo site directory: $SITE_DIR"

# En local monorepo, go.mod peut contenir replace => ../minigo ; sur GitHub Pages le voisin n'existe pas.
prepare_hugo_go_mod() {
  local dir="$1"
  local mod="$dir/go.mod"
  [ -f "$mod" ] || return 0
  local changed=0
  local out=""
  while IFS= read -r line || [ -n "$line" ]; do
    if [[ "$line" =~ ^replace[[:space:]]+([^[:space:]]+)[[:space:]]+\=\>[[:space:]]*(.+)$ ]]; then
      local repl_path="${BASH_REMATCH[2]%%#*}"
      repl_path="$(echo "$repl_path" | xargs)"
      if [ -f "$dir/$repl_path/go.mod" ]; then
        out+="$line"$'\n'
      else
        changed=1
        echo "→ go.mod: replace ignoré (cible absente: $repl_path)" >&2
      fi
    else
      out+="$line"$'\n'
    fi
  done < "$mod"
  if [ "$changed" -eq 1 ]; then
    printf '%s' "$out" > "$mod"
  fi
}

if [ -f "$SITE_DIR/go.mod" ]; then
  prepare_hugo_go_mod "$SITE_DIR"
  (cd "$SITE_DIR" && hugo mod get ./...)
fi

if [ -f "$SITE_DIR/../scripts/build-with-pagefind.sh" ] && [ "${HUGO_SKIP_PAGEFIND:-}" != "1" ]; then
  if grep -qE 'search\s*=\s*"pagefind"' "$SITE_DIR/hugo.toml" 2>/dev/null || \
     grep -qE 'search\s*=\s*"pagefind"' "$SITE_DIR/config.toml" 2>/dev/null; then
    THEME_SCRIPTS="$(cd "$SITE_DIR/.." && pwd)/scripts"
    if [ -f "$THEME_SCRIPTS/build-with-pagefind.sh" ]; then
      HUGO_BASEURL="$BASE_URL" "$THEME_SCRIPTS/build-with-pagefind.sh" "$SITE_DIR"
      echo "OK: $SITE_DIR/public"
      exit 0
    fi
  fi
fi

hugo -s "$SITE_DIR" --minify --environment production --baseURL "$BASE_URL"
echo "OK: $SITE_DIR/public"
