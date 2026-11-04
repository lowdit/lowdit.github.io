# Observatoire `/status/` — lowdit-site

Page publique alimentée par `data/status/latest.yaml` (généré, versionné).

## Reproduire

```bash
./scripts/status-collect.sh
# ou --quick pour build + HTTP sans Lighthouse/axe

# Si --quick a été utilisé mais des JSON existent dans data/status/runs/ :
./scripts/status-merge-runs.sh
```

Après chaque collecte (ou merge), `assemble.rb` **complète** automatiquement les scores manquants depuis `runs/*.json` quand c’est possible.

Sources : [`lowtech-dev-method/tooling/universe-status/README.md`](../../lowtech-dev-method/tooling/universe-status/README.md).  
Spec méthode : [`lowtech-dev-method/docs/SPEC-OUTIL-status-collect.md`](../../lowtech-dev-method/docs/SPEC-OUTIL-status-collect.md).

## Fichiers

| Fichier | Rôle |
| --- | --- |
| `data/status/targets.yaml` | URLs lot 1 + chemins hôte |
| `data/status/latest.yaml` | Résumé du dernier run |
| `data/status/runs/` | JSON Lighthouse bruts (gitignoré) |

## Interprétation

- **Scores bruts** affichés (pas de comparaison aux seuils `OBJECTIFS-PERF-LOWDIT.md` en v1).
- **Mobile** seul par défaut (`--form-factor mobile`).
- **Head contract** : `hs test seo` — voir [`SEO-HEAD-CONTRACT.yaml`](../../lowtech-dev-method/docs/SEO-HEAD-CONTRACT.yaml).
- **axe-core** : si ChromeDriver et Chrome sont désalignés, les comptages axe peuvent être vides — Lighthouse reste enregistré (run local 2026-10-22).

## CI (optionnel, non activé)

Workflow `workflow_dispatch` possible pour committer `latest.yaml` — uniquement sur accord explicite (pas de push auto en v1).
