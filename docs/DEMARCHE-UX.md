# Démarche UX pour les sites Lowdit

## Intention validée

Le site Lowdit doit être une vitrine ambitieuse qui montre les expériences que les modules permettent de produire. La liste des modules vient après les cas d’usage : elle aide à comprendre et à reproduire les expériences présentées. Chaque module aura ensuite un site dédié, qui pourra prendre la forme la plus utile à son public (documentation, démonstration, présentation éditoriale ou combinaison de ces formats).

Un graphisme visible et expressif est attendu. Il doit servir la compréhension du produit, pas masquer ce qui existe réellement.

## Ce que montrent les produits aujourd’hui

Ces constats proviennent des READMEs et des templates locaux observés le 9 octobre 2026. Ils décrivent l’état des dépôts consultés, pas une évaluation complète de l’expérience publiée.

| Module | Ce qu’il fait | Ce qu’un showcase pertinent devrait montrer |
| --- | --- | --- |
| Sligo | Compose et publie des présentations web avec Reveal.js. La page d’accueil et les cartes de decks existent ; une liste de decks dédiée existe également. | Une vraie couverture de présentation, son sujet, son public, sa durée si renseignée, puis un aperçu navigable du deck. La liste actuelle est une base fonctionnelle, pas une vitrine de catalogue aboutie. |
| Minigo | Fournit une coque Hugo pour cataloguer des documents, sections et sorties associées. | Un catalogue crédible avec quelques contenus, métadonnées, états vides soignés et liens vers les bons formats. C’est la navigation du site ; Repogo reste le moteur d’impression. |
| Repogo | Produit des rendus imprimables/PDF à partir de contenus Hugo (rapports, comptes rendus, courriers). | Des pages avant/après : contenu web, pages du rapport généré, sommaire et résultat imprimable. Montrer les possibilités et les limites du rendu réellement disponible. |
| Resugo | Présente des CV et lettres ; son accueil courant liste les CV disponibles. | Un exemple de CV web lisible et son rendu imprimé, avec un choix explicite de contenu et de hiérarchie. Le thème ne doit pas être présenté comme une galerie de styles si ces variantes n’existent pas. |
| Fromago | Génère des formulaires d’enquête. Selon la configuration, les réponses sont envoyées vers un dépôt GitHub cible via Public Action Trigger et le workflow GitHub associé. | Le parcours complet : répondre, comprendre la confirmation, savoir où les réponses sont transmises et découvrir comment elles rejoignent les contenus du projet. Décrire clairement la configuration et les permissions nécessaires ; ne pas le résumer à un formulaire hébergé par Lowdit. |
| Frago | Produit des synthèses structurées pour audits et indicateurs. | Un exemple fictif signalé comme tel, accompagné des sources et de la méthode de calcul réellement utilisées. Ne pas suggérer qu’un indicateur suffit à établir une conformité. |
| Higo | Thème éditorial Hugo pour articles, ressources et projets. | Un exemple de parcours éditorial et de navigation entre contenus, pas uniquement une capture de thème. |

## Parcours de la vitrine

1. **Comprendre la promesse** : en quelques secondes, savoir que Lowdit assemble des modules pour produire des contenus et des expériences web, de présentation, de formulaire ou de rapport.
2. **Choisir un besoin** : parcourir des exemples concrets, et non devoir connaître le nom des modules à l’avance.
3. **Voir le résultat** : ouvrir un aperçu réel ou un prototype explicitement identifié, avec le contexte et les limites de l’exemple.
4. **Comprendre les briques** : lire quels modules composent l’expérience et ce que chacun apporte.
5. **Passer à l’action** : ouvrir le site dédié du module quand il existe ; jusque-là, accéder à son dépôt et à sa documentation existante.

## Règles de conception

- Montrer le **résultat du travail** avant de montrer le nom de l’outil.
- Ancrer chaque exemple dans une personne, un besoin et une tâche reconnaissable.
- Préférer des captures et sorties provenant des projets réels. Les écrans conceptuels restent identifiés comme concepts et n’imitent pas des fonctionnalités absentes.
- Ne pas inventer des métriques, fonctionnalités, intégrations ou niveaux de maturité. Signaler les données fictives et les éléments en chantier.
- Expliquer les conditions qui changent l’usage, notamment la configuration de Fromago et les destinations des réponses.
- Conserver le langage visuel Lowdit (palette, typographies, marques de référence), avec des compositions fortes, une hiérarchie claire et une couleur d’accent associée au module présenté.
- Rendre les parcours utilisables au clavier, au zoom et sur petit écran. Respecter `prefers-reduced-motion`; les effets ne doivent pas porter seuls une information.
- Garder la page statique et légère tant qu’aucun besoin observé ne justifie une dépendance ou un service distant.

## Références de conception fournies

- [Anti Slop](https://github.com/miqdadbadjuber/anti-slop) est utile comme filtre contre les faux chiffres, le texte de remplissage et les motifs UI sans intention. Il souligne aussi qu’un filtre ne donne pas à lui seul une direction visuelle ; Lowdit la formule dans [`../DESIGN.md`](../DESIGN.md).
- [Taste Skill](https://github.com/leonxlnx/taste-skill) apporte une méthode de brief et de revue des choix visuels. La page du dépôt qualifie sa v2 d’expérimentale : on retient le questionnement sur la variété, la densité et le mouvement, sans adopter son style par défaut.
- [GSAP Skills](https://github.com/greensock/gsap-skills) sert de référence technique si un besoin d’animation GSAP apparaît. Le site statique actuel n’en a pas besoin ; les principes d’accessibilité et de mouvement réduit restent prioritaires.
- [Hallmark](https://github.com/Nutlope/hallmark) propose une étude de références visuelles et des modes d’audit ou de redesign. Pour Lowdit, l’usage pertinent est d’explorer des macrostructures et de critiquer les interfaces génériques. La marque Lowdit et les besoins utilisateurs restent le brief directeur ; un score ou gate interne à l’outil n’est pas un test UX.
- [Agent Skills](https://github.com/addyosmani/agent-skills) structure un cycle allant de la spécification à la revue, avec des workflows ciblés pour l’interface et la performance. On peut adapter cette organisation aux prompts IA Lowdit en conservant la méthode de développement déjà en vigueur dans les dépôts.

## Critères de revue avant publication

- Une personne qui découvre Lowdit peut-elle choisir un exemple sans connaître les modules ?
- Le résultat présenté existe-t-il ? Si c’est un concept, est-ce indiqué au bon endroit ?
- Chaque exemple explique-t-il le besoin, le résultat, les modules utilisés et le prochain pas ?
- Les liens vont-ils vers une destination publiée et vérifiée ?
- Les interactions et contenus restent-ils compréhensibles sans animation et sur mobile ?
- Les affirmations produit ont-elles été comparées aux README, exemples et rendus actuels du module ?

Une revue de maquette et un test de compréhension avec quelques personnes cibles devront précéder la publication finale. Les contrôles de code seuls ne prouvent pas la qualité d’usage.

## Étapes de travail proposées

1. Sélectionner un exemple réel par famille de sortie et obtenir ses contenus/données de démonstration.
2. Concevoir la hiérarchie et les cartes de showcase sur ces exemples, avec Frago et Repogo/Sligo/Resugo/Fromago selon les vrais rendus disponibles.
3. Vérifier les parcours de découverte, d’aperçu et de sortie vers chaque module.
4. Décliner un site par module avec une forme propre à son usage ; ne pas imposer une documentation identique à tous.
5. Tester les tâches clés et corriger les problèmes de compréhension, clavier, responsive et performance avant publication.
