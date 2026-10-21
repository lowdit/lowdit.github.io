# Lowdit — vitrine (marque)

Site Hugo **Minigo + tokens Brand** : une seule base éditoriale pour [lowdit.github.io](https://lowdit.github.io/). Les modules restent sur leurs démos Pages ; cette vitrine les relie.

## Motion header (essai)

Accueil uniquement : filet turquoise animé + pastille discrète. Désactiver :

```toml
# config/_default/hugo.toml
[params.lowdit]
  vitrineHeaderMotion = false
```

Revert complet : supprimer `assets/css/vitrine-header-motion.css`, le block `head` dans `layouts/index.html`, et la ligne dans `view-body-class.html`.

## Développer

```bash
cd lowdit-site
hugo server   # thème local : themes/minigo → ../minigo
```

## Build production (Pages org)

```bash
./scripts/hugo-pages-build.sh "https://lowdit.github.io/"
```

CI : `.github/workflows/gh-pages.yml` — Hugo **0.167** extended. Activer **Settings → Pages → GitHub Actions** sur le dépôt `lowdit.github.io`.

## Contenu

| Élément | Rôle |
| --- | --- |
| `content/_index.md` | Accroche et intro |
| `data/modules.yaml` | Cartes modules (URL démo + dépôt) |
| `data/recipes.yaml` | Exemples d’assemblage |
| `layouts/` | Accueil vitrine (coque Minigo) |
| `assets/css/site-overrides.css` | Extension marque |
| `static/logos/` | Logos tuiles (Pages statiques) |
| `assets/logos/` + `assets/favicons/lowdit/` | Header + favicons (Minigo `resources.Get`) — regénérer depuis Brand : `cp lowdit-brand/logos/lowdit/favicons/* assets/favicons/lowdit/` et `lowdit-mark.png` → `assets/logos/lowdit.png` |

La vitrine HTML statique v1 est archivée dans `legacy-v1-html/`.

## Doc produit

- [PLAN-SITES-MODULES.md](docs/PLAN-SITES-MODULES.md)
- [LOT-1-GITHUB-PAGES.md](docs/LOT-1-GITHUB-PAGES.md)
- [DESIGN.md](DESIGN.md) · [lowdit-brand/brand/VUES-PREMIUM.md](../lowdit-brand/brand/VUES-PREMIUM.md)

## Publier sur `lowdit.github.io`

Le dépôt GitHub **lowdit/lowdit.github.io** reçoit une copie de ce dossier (sans `docs/`, `legacy-v1-html/`, `public/`). En local, `go.mod` utilise `replace` vers `../minigo` ; sur GitHub, retirer le `replace` avant push ou laisser la CI résoudre `github.com/lowdit/minigo`.
