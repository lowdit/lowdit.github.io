#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
exec "$ROOT/lowtech-dev-method/tooling/universe-status/run.sh" \
  --config "$ROOT/lowdit-site/data/status/targets.yaml" \
  --out "$ROOT/lowdit-site/data/status/latest.yaml" \
  "$@"
