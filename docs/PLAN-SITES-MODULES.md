# Sites dédiés aux modules Lowdit

## Décision produit

La vitrine Lowdit présente uniquement les modules publics. Chaque module possède à terme un site autonome sur GitHub Pages, et sa carte depuis la vitrine renvoie vers ce site. Cette orientation a été confirmée par le propriétaire du projet le 9 octobre 2026.

Pour le **lot 1** (Sligo, Repogo, Resugo, Fromago), les démos exampleSite sont publiées sur GitHub Pages ; les cartes vitrine pointent vers ces URL une fois vérifiées (HTTP 200). Tant qu’un site n’est pas publié, la carte mène au dépôt source. Ne pas créer de liens vers des adresses Pages supposées.

**Vitrine org** : dépôt [`lowdit.github.io`](https://github.com/lowdit/lowdit.github.io) — copie déployée de `lowdit-site/` (HTML statique, racine `https://lowdit.github.io/`).

## Catalogue public

| Module | Rôle présenté | Dépôt source | Site dédié |
| --- | --- | --- | --- |
| Sligo | Présentations web | [lowdit/sligo](https://github.com/lowdit/sligo) | **Publié** — [`https://lowdit.github.io/sligo/`](https://lowdit.github.io/sligo/) |
| Frago | Restitution d’audits et d’indicateurs | [lowdit/frago](https://github.com/lowdit/frago) | **Documentation** — [`https://lowdit.github.io/frago/docs/`](https://lowdit.github.io/frago/docs/) (vitrine produit dédiée : lot ultérieur) |
| Repogo | Rapports PDF depuis des contenus web | [lowdit/repogo](https://github.com/lowdit/repogo) | **Publié** — [`https://lowdit.github.io/repogo/`](https://lowdit.github.io/repogo/) |
| Fromago | Enquêtes et formulaires | [lowdit/fromago](https://github.com/lowdit/fromago) | **Publié** — [`https://lowdit.github.io/fromago/fr/`](https://lowdit.github.io/fromago/fr/) |
| Minigo | Coque Hugo pour catalogues de documents | [lowdit/minigo](https://github.com/lowdit/minigo) | **Publié** — [`https://lowdit.github.io/minigo/`](https://lowdit.github.io/minigo/) (vérifié 2026-10-21) |
| Resugo | CV et candidatures | [lowdit/resugo](https://github.com/lowdit/resugo) | **Publié** — [`https://lowdit.github.io/resugo/`](https://lowdit.github.io/resugo/) |
| Higo | Sites éditoriaux Hugo | [lowdit/higo](https://github.com/lowdit/higo) | À créer ; convention proposée : `https://lowdit.github.io/higo/` |

Les destinations marquées « convention proposée » sont des adresses envisagées à confirmer lors de la création et de la publication de chaque site.

## Périmètre du catalogue

Le catalogue public contient uniquement les sept modules du tableau. Les autres projets de l’écosystème n’y figurent pas et ne sont pas ajoutés aux exemples de composition.

## Parcours et liens

1. La vitrine Lowdit explique brièvement l’écosystème et propose une carte par module.
2. Une carte mène au site dédié du module quand celui-ci est publié.
3. Le site du module présente son usage, ses fonctions, un exemple, sa documentation et un lien vers le dépôt source.
4. Avant la mise en ligne du site dédié, la carte renvoie directement au dépôt source.

Le mot « rediriger » désigne ici un lien normal depuis la carte, pas une redirection HTTP automatique. La personne choisit le module sur la vitrine, puis arrive sur son site dédié.

## Hébergement envisagé

La convention de départ utilise les GitHub Pages de l’organisation :

- vitrine : `https://lowdit.github.io/` si le dépôt porte le nom `lowdit.github.io` ;
- module : `https://lowdit.github.io/<nom-du-module>/` si GitHub Pages publie le dépôt du module comme site de projet.

Chaque site Hugo devra déclarer son `baseURL` correspondant et produire des chemins compatibles avec ce sous-répertoire. Vérifier que l’URL Pages est publiée avant de remplacer l’URL du dépôt dans la carte. Un domaine personnalisé ou une autre structure de dépôts pourra remplacer cette convention ; mettre alors à jour cette table et les liens de la vitrine.

## Contenu minimal d’un site module

Chaque site dédié devrait fournir :

- une page d’accueil avec une promesse claire et le public concerné ;
- les usages et capacités confirmés du module ;
- un exemple concret, visuel et identifiable comme exemple ;
- l’accès à la documentation et au dépôt source ;
- une navigation et une identité Lowdit cohérentes, avec les éléments déjà disponibles dans le kit de marque.

Présenter l’état réel du module : ne pas transformer une piste ou une fonctionnalité prévue en capacité déjà disponible.
