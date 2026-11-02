---
title: État des démos
description: Signaux reproductibles (build, Lighthouse, axe-core) — transparence LowTech, sans certification.
layout: status-observatory
---

## Ce que ça ne dit pas

- Pas de conformité **RGAA** / **WCAG** ni de validation au clavier complète.
- Les scores **Lighthouse** et **axe-core** sont des **signaux** sur un instant T (mobile par défaut).
- Le contrat **SEO / partage** (`hs test seo`) complète le SEO Lighthouse pour le `<head>` des démos.

## Commandes

```bash
# Observatoire (build hôte + mesures)
./lowdit-site/scripts/status-collect.sh

# Head SEO des exampleSites
hs test seo modules
```

Référence méthode : [`WEB-QUALITY.md`](https://github.com/lowdit/lowtech-dev-method/blob/main/WEB-QUALITY.md) · doc site : [`docs/STATUS-OBSERVATOIRE.md`](../../docs/STATUS-OBSERVATOIRE.md).
