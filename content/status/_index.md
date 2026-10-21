---
title: État des démos
description: Builds locaux, URLs publiées et limites — transparence LowTech, sans certification.
layout: product
---

Page **observatoire** du palier octobre 2026 : ce qui est vérifié aujourd’hui, pas une promesse produit fini.

## Modules lot 1

| Module | Démo en ligne | Dernier `hs test` (local) | Notes |
| --- | --- | --- | --- |
| Sligo | [lowdit.github.io/sligo](https://lowdit.github.io/sligo/) | OK (2026-10-21) | Présentations (`deck-studio`) |
| Repogo | [lowdit.github.io/repogo](https://lowdit.github.io/repogo/) | OK (2026-10-21) | Rapports (`publisher`) |
| Resugo | [lowdit.github.io/resugo](https://lowdit.github.io/resugo/) | OK (2026-10-21) | CV (`cv-vitrine`) |
| Fromago | [lowdit.github.io/fromago/fr](https://lowdit.github.io/fromago/fr/) | OK (2026-10-21) | Enquêtes (`inquiry`) |

Commande de contrôle (racine monorepo) :

```bash
./bin/test-hugo-sites sligo resugo fromago repogo
```

## Design system

| Cible | Contrôle | Résultat |
| --- | --- | --- |
| lowdit-brand | `hugo build` | OK (2026-10-21) |

## Accessibilité, performance, SEO

- **Pas de score public** interprété comme conformité RGAA/WCAG.
- Les démos suivent la méthode Lowdit (gates Brand, documentation a11yNot) ; l’audit complet reste un travail d’expert sur un périmètre client.
- Perf / SEO : objectifs proposés dans la doc méthode ; pas de tableau Lighthouse publié sur ce palier.

Référence : `WEB-QUALITY.md` dans le dépôt `lowtech-dev-method` (monorepo local).

## Écart déploiement

Le contenu **local** peut être en avance sur GitHub Pages tant qu’il n’y a pas de push + build CI. Détail du gel : fichier `docs/PALIER-2026-10.md` dans le dépôt `lowdit-site` (non publié sur Pages).
