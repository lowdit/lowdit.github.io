# Lot 1 — GitHub Pages modules (P-lowdit-modules-pages-lot1-01)

> **Date contrôles :** 2026-10-21 · **Lot 1 :** Sligo, Repogo, Resugo, Fromago (Minigo / Higo = lot 2).

## État publication

| Module | `baseURL` cible (org `lowdit`) | Build Pages local | URL publique vérifiée | Carte `lowdit-site` |
| --- | --- | --- | --- | --- |
| **Sligo** | `https://lowdit.github.io/sligo/` | OK (`scripts/hugo-pages-build.sh`) | **200** (2026-10-21) | **Site démo** |
| **Repogo** | `https://lowdit.github.io/repogo/` | OK (shortcode `mermaid` côté exampleSite) | **200** | **Site démo** |
| **Resugo** | `https://lowdit.github.io/resugo/` | OK | **200** | **Site démo** |
| **Fromago** | `https://lowdit.github.io/fromago/` | OK | **200** — accueil FR [`/fr/`](https://lowdit.github.io/fromago/fr/) | **Site démo** |
| **Frago** | `https://lowdit.github.io/frago/docs/` | (doc existante) | **200** | **Documentation** |

**Vitrine org** : dépôt [`lowdit/lowdit.github.io`](https://github.com/lowdit/lowdit.github.io) — source canonique locale `lowdit-site/` ; racine `https://lowdit.github.io/` après activation Pages (branche `main`, dossier `/`).

Règle [`PLAN-SITES-MODULES.md`](PLAN-SITES-MODULES.md) : ne basculer une carte vers Pages **qu’après** HTTP 200 sur l’URL de démo.

## Procédure commune (dépôt module)

1. **Settings → Pages → Build and deployment : GitHub Actions** (pas « Deploy from branch » pour ces repos).
2. Source Hugo : fichier **`.github/hugo-site-dir`** → `exampleSite` (lot 1).
3. Push sur `main` / `master` ou **workflow_dispatch** → workflow **`Deploy Hugo site to Pages`**.
4. Build CI : `./scripts/hugo-pages-build.sh "<baseURL Pages>/"` (base URL fournie par `configure-pages`).
5. Hugo CI : **0.167.0** extended (aligné builds locaux 2026-10-21).

Détail kit : [`../../lowdit-brand/docs/GITHUB-PAGES-LOWDIT.md`](../../lowdit-brand/docs/GITHUB-PAGES-LOWDIT.md).

## Contrôles locaux (session 2026-10-21)

```bash
# Build production Pages (chaque dépôt, depuis sa racine)
./scripts/hugo-pages-build.sh "https://lowdit.github.io/<module>/"

# Vitrines exampleSite (dev)
bin/test-hugo-sites sligo   # idem repogo, resugo, fromago
```

| Module | `hugo-pages-build.sh` | `bin/test-hugo-sites` |
| --- | --- | --- |
| sligo | OK | OK |
| repogo | OK | OK |
| resugo | OK | OK |
| fromago | OK | OK |

## Prochaines actions (humain, hors scope auto)

- **Vitrine** : publier le contenu de `lowdit-site/` dans `lowdit.github.io` ; **Settings → Pages → Deploy from branch → main / (root)**.
- **Lot 2** : Minigo, Higo — NEXT séparé ou extension lot 1.

Pas de commit / push / tag dans cette session sans accord explicite.
