# Direction visuelle — vitrine Lowdit

## But

Créer une vitrine éditoriale et démonstrative qui fait ressentir ce que les modules permettent de produire. Le showcase ouvre la page ; le catalogue de modules vient ensuite. Les visuels conceptuels doivent être remplacés progressivement par des exemples réels.

## Direction

- **Vif, éditorial, précis** : grandes accroches, compositions asymétriques maîtrisées, couleurs franches et mises en page qui varient selon le cas d’usage.
- **Une identité Lowdit** : bleu nuit `#0B2545`, crème `#F7F6F2`, turquoise `#14C6B1`, puis un accent propre au module montré — violet Sligo, bleu Repogo, corail Frago.
- **Des objets concrets dans l’image** : une couverture de deck, une page de rapport, une réponse de formulaire, un catalogue de contenus. Éviter les écrans génériques de dashboard.
- **Une typographie de marque** : la planche Lowdit attribue Space Grotesk aux titres, Inter au texte et IBM Plex Mono au code. Le kit disponible fournit Atkinson comme secours local ; ne pas charger de polices distantes par défaut.
- **Du mouvement rare et utile** : interactions courtes et compréhensibles, sans animation permanente ni dépendance obligatoire.

## Écarter

- les métriques inventées, faux scores, témoignages, prix ou badges de maturité ;
- les interfaces qui semblent réellement disponibles alors qu’elles ne sont que des maquettes ; chaque concept reste identifié comme tel ;
- les cartes toutes identiques, les décorations sans fonction et les effets qui compensent l’absence d’un vrai exemple ;
- les animations qui gênent la lecture, le clavier, les préférences de mouvement réduit ou le chargement.

## Références de conception

Les trois dépôts transmis sont des références de méthode, pas des dépendances du site :

- **Anti Slop** aide à repérer le contenu générique, les données inventées et les composants ajoutés sans intention. Il ne remplace pas la direction visuelle ; ce fichier donne cette direction.
- **Taste Skill** propose une démarche de brief, de système visuel et de revue des choix de densité, de mouvement et de variété. Sa version v2 est annoncée comme expérimentale ; retenir l’approche de revue, pas copier son langage visuel.
- **GSAP Skills** est une référence technique si une animation GSAP justifiée est choisie. Aucun besoin actuel ne justifie d’ajouter GSAP à la vitrine statique.

Sources : [anti-slop](https://github.com/miqdadbadjuber/anti-slop) · [taste-skill](https://github.com/leonxlnx/taste-skill) · [gsap-skills](https://github.com/greensock/gsap-skills).

### Références ajoutées

- [Hallmark](https://github.com/Nutlope/hallmark) peut servir à étudier une référence, auditer la page actuelle ou explorer une autre structure visuelle. On garde Lowdit comme direction : la sortie Hallmark est un prototype à évaluer, pas un thème à importer ni une copie à publier. Ses gates automatiques ne remplacent pas une revue d’usage, de contenu ou d’accessibilité.
- [Agent Skills](https://github.com/addyosmani/agent-skills) fournit des workflows pour l’interface, la performance et la vérification. Ils peuvent améliorer les prompts de travail ; ils ne définissent pas l’identité graphique de Lowdit.
- [UX/UI Agent Skills (XIAS)](https://github.com/plugin87/ux-ui-agent-skills) — grilles WCAG, tokens, anti-slop pour **valider** une implémentation Minigo / vue CSS ; les spécificités éditoriales par vue sont dans `lowdit-brand/brand/VUES-PREMIUM.md`.
