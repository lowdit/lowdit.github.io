#!/usr/bin/env bash
# Complète latest.yaml avec les JSON Lighthouse déjà présents dans data/status/runs/
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
RUBY_BIN="$(command -v ruby3 2>/dev/null || command -v ruby)"
YAML="$ROOT/lowdit-site/data/status/latest.yaml"
RUNS="$ROOT/lowdit-site/data/status/runs"

env RUBYOPT="-W0" GEM_HOME="" GEM_PATH="" "$RUBY_BIN" -ryaml -e "
  require '$ROOT/lowtech-dev-method/tooling/universe-status/lib/collect.rb'
  doc = YAML.load_file('$YAML')
  runs = '$RUNS'
  doc['host'] ||= {}
  lh = File.join(runs, 'host-status-lighthouse.json')
  doc['host']['lighthouse'] = lighthouse_scores(lh) if File.file?(lh)
  (doc['targets'] || []).each do |t|
    p = File.join(runs, \"\#{t['id']}-lighthouse.json\")
    t['lighthouse'] = lighthouse_scores(p) if File.file?(p)
  end
  doc['scoresFromRuns'] = true
  doc['scoresNote'] = 'Scores lus depuis data/status/runs/. Collecte complète : ./lowdit-site/scripts/status-collect.sh'
  File.write('$YAML', doc.to_yaml)
  puts '→ scores fusionnés dans latest.yaml'
"
