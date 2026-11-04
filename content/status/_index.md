---
title: État des démos
description: Tableau de bord des signaux reproductibles — build, HTTP, Lighthouse, commandes de vérification. Pas de certification.
layout: status-observatory
---

Les tableaux ci-dessus sont alimentés par `data/status/latest.yaml`. En l’absence de scores, exécuter la collecte (ou fusionner des runs locaux).

## Ce que cette page ne dit pas

- Pas de conformité **RGAA** / **WCAG** ni parcours clavier complet.
- **Lighthouse** et **axe-core** = signaux datés (mobile par défaut), pas audit contractuel.
- **SEO `<head>`** : `hs test seo modules` (contrat séparé du score SEO Lighthouse).

## Mettre à jour les chiffres

```bash
# Collecte complète (build + HTTP + Lighthouse + axe si env OK)
./lowdit-site/scripts/status-collect.sh

# HTTP seulement (--quick) puis scores depuis runs/ déjà présents
./lowdit-site/scripts/status-collect.sh --quick
./lowdit-site/scripts/status-merge-runs.sh
```

Ces chiffres sont des **signaux datés**, pas une certification d’accessibilité ni de conformité légale.
