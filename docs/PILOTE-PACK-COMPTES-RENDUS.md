# Pilote #1 — pack Comptes rendus

> **Statut :** en cours (2026-11-05) · **Décision :** [`ARBITRAGE-LIGNE-SITES-STRUCTURE.md`](../../lowtech-dev-method/docs/ARBITRAGE-LIGNE-SITES-STRUCTURE.md)

## Choix

- **Pack pilote :** `comptes-rendus` (associations, petites structures).
- **Démo interim :** [`repogo/exampleSite`](../../repogo/exampleSite/) publiée sur [https://lowdit.github.io/repogo/](https://lowdit.github.io/repogo/) — contenu fictif **Collectif Horizons** (CA + AG).
- **Template install :** [`lowtech-dev-method/templates/site-packs/comptes-rendus/`](../../lowtech-dev-method/templates/site-packs/comptes-rendus/) + [`bin/init-from-pack.sh`](../../bin/init-from-pack.sh).

## Preuve de fin (checklist)

| # | Critère | Commande / artefact |
| --- | --- | --- |
| 1 | Build exampleSite sans erreur | `hs test repogo` |
| 2 | Au moins **2 CR** datés, décisions explicites, pas de lorem | `content/reports/ca-*`, `ag-*` |
| 3 | Lien print actif sur une page CR | ouvrir `/reports/.../` → export print Repogo |
| 4 | Manifeste site versionné | `repogo/exampleSite/site.manifest.yaml` |
| 5 | Fiche pack + vitrine `#packs` | [`lowdit-brand/docs/packs/comptes-rendus.md`](../../lowdit-brand/docs/packs/comptes-rendus.md) |
| 6 | Parcours install documenté | template + `init-from-pack.sh --help` |

## Écart connu (accepté pour le pilote)

L’exampleSite Repogo reste en vue **`publisher`** (showroom éditorial). Les **nouveaux** sites créés via le template ciblent **`thinktank`** + profil hub CR — alignement visuel à converger dans un incrément Brand Studio ultérieur.

## Prochaine preuve humaine

Une personne extérieure retrouve la **décision du 12 mars 2026** (locaux / publication CR) en moins de deux minutes depuis l’accueil démo.
