# Plan de démarrage — gamme produit Lowdit

**Statut : plan demandé par le propriétaire du projet, 9 octobre 2026.**  
**Périmètre :** vitrine Lowdit, sites publics des modules, installation guidée et prompts d’agent IA.  
**Hors périmètre :** publication ou création de dépôts GitHub pendant cette étape ; exposition de projets non publics ; inventer des fonctionnalités ou des démos produit.

## 1. But

Créer un point de départ crédible pour lancer Lowdit comme une gamme de produits cohérente : visuellement affirmée, compréhensible par une personne qui découvre la marque, démontrable avec de vrais exemples, et assez simple à installer dans un projet Hugo existant.

La vitrine ne doit pas être un annuaire de dépôts. Elle montre d’abord **ce qu’une personne peut réaliser**, puis révèle les modules utilisés et la façon de les essayer ou de les installer.

## 2. Principes confirmés

- **Showcase d’abord.** La page Lowdit commence par les expériences et résultats ; le catalogue des modules vient ensuite.
- **Un site par module.** Chaque module disposera de son site GitHub Pages. Les cartes de la vitrine basculeront du dépôt GitHub vers le site propre au module une fois celui-ci publié et vérifié.
- **Gamme publique limitée aux modules.** Sligo, Frago, Repogo, Fromago, Minigo, Resugo et Higo sont au catalogue. Les autres projets de l’écosystème restent hors de la vitrine publique.
- **Graphisme démonstratif et cohérent.** Utiliser les marques et la planche de référence Lowdit ; produire des compositions fortes et propres à chaque cas d’usage. Ne pas confondre maquette et rendu disponible.
- **Installation facile à reprendre.** Documenter un chemin court pour Hugo Modules et un chemin sans Go modules lorsque le dépôt le permet. Décrire les prérequis propres à chaque produit.
- **L’IA guide l’installation, le projet reste vérifiable.** Les prompts font inspecter le site cible, appliquer les instructions du module, produire un changement minimal et vérifier le build ; ils ne remplacent pas les README, la documentation ni la validation humaine des accès.

## 3. Expérience visée

### Vitrine Lowdit

1. Une accroche exprime la promesse Lowdit.
2. Une galerie de réalisations concrètes ouvre la visite : cours avec PDF et slides, rapport lisible, catalogue éditorial, enquête et réutilisation des réponses.
3. Chaque exemple présente le besoin, le résultat, les modules qui le composent et un chemin pour le découvrir.
4. Un catalogue de modules permet ensuite de choisir par tâche et par format de sortie.
5. Les liens envoient vers le site du module dès qu’il est disponible, sinon vers son dépôt et sa documentation existante.

### Site propre à un module

Chaque site garde la marque Lowdit mais adopte une forme adaptée au produit. Une documentation technique seule n’est pas forcément une bonne page d’accueil. Le site module combine selon le besoin :

- démonstration ou exemple réel ;
- promesse, public et tâches couvertes ;
- documentation et limites d’usage ;
- parcours d’installation court ;
- lien vers le code source, les versions et les aides.

Les sorties produit doivent être montrées directement quand elles existent : présentation Sligo, catalogue Minigo, PDF Repogo, CV Resugo, formulaire et destination des réponses Fromago. Les aperçus conceptuels actuels sont temporaires et restent étiquetés comme tels.

## 4. Carte des modules et preuve attendue

| Module | Besoin à raconter | Preuve visuelle à produire | Point d’installation à documenter |
| --- | --- | --- | --- |
| **Sligo** | Présenter, former, expliquer | Un vrai deck, sa couverture, son parcours et sa liste de présentations | Thème Hugo, contenu du deck, ouverture et navigation clavier |
| **Minigo** | Organiser un catalogue ou un portail documentaire | Une page d’accueil et des cartes de documents avec différents formats | Coque Hugo, sections, recherche éventuelle, base URL GitHub Pages |
| **Repogo** | Transformer un contenu structuré en rapport imprimable | Même contenu web et PDF généré, avec pages, sommaire et fin de document | Moteur d’export, ordre des thèmes, formats print et conditions de rendu |
| **Resugo** | Présenter un parcours professionnel et générer des documents de candidature | Un CV web et son rendu imprimable issus du même jeu de contenu | Section de contenu attendue, champs obligatoires, rendu PDF/impression |
| **Fromago** | Poser une enquête et réutiliser les réponses | Formulaire, confirmation, destination et représentation de la réponse enregistrée | `targetrepo`, workflow GitHub et permissions nécessaires, expliqués avant activation |
| **Frago** | Structurer une restitution d’audit ou d’indicateurs | Exemple fictif explicitement signalé, données source et méthode de calcul | Format d’entrée, configuration et limites de toute interprétation |
| **Higo** | Publier un site éditorial avec ressources et projets | Un parcours d’article à une ressource ou un projet lié | Thème Hugo, sections, navigation et options retenues |

## 5. Stratégie d’installation

### Principe de simplicité

Ne pas commencer par un installateur propriétaire ni par une nouvelle dépendance. Chaque module fournit d’abord une procédure courte et vérifiée qui s’appuie sur ses méthodes actuelles : Hugo Modules quand le projet les utilise, copie/vendoring `themes/` quand c’est la voie documentée. Les instructions et les exemples doivent dire lequel choisir et pourquoi.

Chaque page d’installation donne, dans cet ordre :

1. prérequis et compatibilité Hugo ;
2. une configuration minimale copiable ;
3. emplacement du contenu et exemple d’usage ;
4. commande de build ;
5. résultat attendu et résolution des deux erreurs les plus probables ;
6. variante sans modules ou avec modules Go, si elle est supportée.

Le prompt IA demande d’abord à l’agent d’inspecter le dépôt cible et le README du module. Il ne choisit pas silencieusement un mode incompatible et ne modifie pas la configuration de publication sans demande.

### Prompts prêts à adapter

Les blocs ci-dessous sont des modèles à copier dans Codex, Cursor ou un autre agent capable de lire le dépôt cible. Remplacer les champs entre accolades.

#### A. Installer un module Lowdit dans un site Hugo existant

```text
Tu vas installer le module Lowdit {MODULE} dans le site Hugo existant situé dans {CHEMIN_DU_SITE}.

Commence par inspecter la version de Hugo, la configuration, les thèmes déjà utilisés, la structure de contenu et les consignes du dépôt. Lis ensuite le README et le guide d’installation du dépôt officiel https://github.com/lowdit/{DEPOT_MODULE}. Ne suppose pas que les modules Go sont activés.

Propose le mode le plus compatible avec ce dépôt : Hugo Modules ou copie dans themes/. Respecte l’ordre de thèmes documenté, les sorties nécessaires et le baseURL actuel. Ne remplace pas les contenus, données, workflows, secrets ou permissions existants. Pour Fromago, n’active aucun envoi avant d’avoir expliqué le dépôt cible, le workflow GitHub et les permissions requises.

Réalise uniquement l’installation nécessaire et un exemple minimal qui démontre le module. N’ajoute pas de dépendance ou de service externe si la documentation ne l’exige pas. Lance le build Hugo adapté au dépôt et corrige les erreurs introduites. Ne publie rien et ne fais aucun commit.

À la fin, indique les fichiers modifiés, la configuration à retenir, la commande utilisée, le résultat du build et les limites ou actions manuelles qui restent.
```

#### B. Installer une composition de modules pour un besoin

```text
Dans le site Hugo existant {CHEMIN_DU_SITE}, construis le parcours « {BESOIN} » avec les modules Lowdit {MODULES}.

Avant de modifier le dépôt, vérifie dans les documentations des modules que cette composition est prévue et précise quelle brique gère la navigation et laquelle gère chaque sortie. Préserve le contenu et la configuration actuels. Respecte la méthode d’installation déjà employée dans le projet, l’ordre des thèmes, les sorties Hugo, la version de Hugo et le baseURL.

Ajoute une seule page ou un seul document de démonstration, clairement identifié comme exemple. N’invente pas de fonction manquante et ne transforme pas des données fictives en résultats réels. Vérifie le build et les liens locaux pertinents. Ne publie rien et ne fais aucun commit.

Rends un compte rendu bref : parcours obtenu, modules et rôles, fichiers touchés, vérification, prochaines étapes manuelles.
```

#### C. Créer la page de démonstration d’un module

```text
Dans le dépôt {DEPOT_MODULE}, prépare une page de démonstration pour son futur site GitHub Pages.

Lis d’abord les consignes du dépôt, son README, les exemples existants et la direction Lowdit. Utilise un vrai exemple produit si disponible. Si le rendu n’existe pas encore, construis une maquette et marque-la explicitement comme concept. Explique le besoin, le résultat, le fonctionnement du module, ses prérequis et ses limites.

Respecte les couleurs, logos et typographies de la référence Lowdit. Soigne la hiérarchie, les détails de mise en page, les états clavier, le contraste, le responsive et le mouvement réduit. Évite les métriques, témoignages et interfaces inventés. N’ajoute pas de dépendance d’animation sans besoin produit démontré.

Vérifie localement le build et les liens. Ne publie pas GitHub Pages et ne fais aucun commit. Termine par les preuves réelles disponibles, les inconnues et les fichiers modifiés.
```

## 6. Phases de réalisation

### Phase 0 — Socle du dépôt de démarrage

- stabiliser la structure du dépôt Lowdit ;
- conserver une vitrine légère qui fonctionne directement avec GitHub Pages ;
- ajouter une vraie direction graphique (ce fichier et `DESIGN.md`) ;
- définir le modèle de contenu d’une expérience et d’une fiche module ;
- cadrer deux directions de composition pour la vitrine, en étudiant les références approuvées avec Hallmark puis en les confrontant à la planche Lowdit ;
- remplacer les copies d’illustrations de principe au fur et à mesure des exemples validés.

**Sortie :** dépôt lisible, première page de showcase, règles de marque et plan d’installation visibles.

### Phase 1 — Prouver un premier parcours d’installation

- choisir un site Hugo de démonstration compatible ;
- installer une combinaison documentée, suggérée pour le premier essai : Minigo + Repogo ;
- créer un document réel et obtenir la sortie HTML/PDF correspondante ;
- écrire le guide pas-à-pas et exécuter le prompt IA sur ce seul parcours ;
- noter les étapes que l’agent ne peut pas inférer (version, permissions, chemin, thème).

**Sortie :** un nouveau site de démonstration peut être monté à partir du guide sans modifier de données client.

### Phase 2 — Construire le showcase Lowdit

- choisir des scénarios représentatifs, en commençant par Sligo, Repogo/Minigo, Resugo et Fromago ;
- faire générer ou étudier plusieurs structures visuelles avec Hallmark, puis choisir à partir de la marque, des tâches et d’exemples réels ;
- produire captures, exemples ou sorties réalistes depuis les projets ;
- rendre chaque expérience cliquable vers sa démonstration et vers ses modules ;
- ordonner la page par besoins, pas par dépôt ;
- vérifier que toutes les affirmations correspondent au code et à la documentation.

**Sortie :** la vitrine explique ce qui est possible en regardant les résultats, et le chemin pour l’essayer est évident.

### Phase 3 — Sites dédiés par module

- créer une page de présentation et d’installation par module, hébergée dans le dépôt du module quand cela convient ;
- ne pas dupliquer la documentation détaillée si elle existe déjà : le site doit orienter vers elle ;
- ajouter une petite page d’accueil spécialisée, un exemple réel, l’installation et un accès au dépôt ;
- vérifier la `baseURL`, les assets et les liens pour les URL GitHub Pages en sous-répertoire ;
- remplacer le lien de la carte Lowdit seulement après publication vérifiée.

**Sortie :** chaque module a une destination claire, indépendante et liée depuis la vitrine Lowdit.

### Phase 4 — Revue exigeante et publication

- faire relire la promesse et les exemples par une personne qui ne connaît pas les noms des modules ;
- lui demander de choisir un résultat et de suivre les étapes d’installation ;
- corriger les blocages de compréhension, clavier, mobile, contraste et performance ;
- vérifier les démos, URL Pages, liens croisés et procédures d’installation ;
- publier après accord sur les dépôts et les URLs.

**Sortie :** parcours découvrable, installable et vérifiable ; aucun concept n’est présenté comme produit livré.

## 7. Ordre de priorité recommandé

1. **Fromago expliqué** : clarifier le parcours formulaire → réponse → dépôt cible ; c’est le module dont le mécanisme doit être le plus transparent.
2. **Minigo + Repogo** : prouver catalogue, lecture web et sortie PDF dans une même expérience ; cela répond directement au besoin de rendre ces sorties plus soignées.
3. **Sligo** : améliorer le catalogue de présentations et montrer un vrai deck, pas une simple liste.
4. **Resugo** : associer une donnée de CV à une présentation web et à son rendu d’impression.
5. **Frago et Higo** : compléter la galerie avec une restitution d’audit et un parcours éditorial réels.

Cet ordre optimise la compréhension et la preuve du produit ; il ne modifie pas les feuilles de route de chaque dépôt.

## 8. Mesures de réussite

- Une personne nouvelle peut décrire à quoi sert Lowdit après la vitrine.
- Elle peut nommer un besoin et trouver le module ou l’exemple correspondant.
- Elle peut distinguer un site catalogue, un moteur d’export et un module de présentation.
- Elle peut installer ou tester un module dans un site Hugo d’exemple avec le guide et le prompt, sans supposer de configuration inconnue.
- Les sites de modules ont une page d’accueil adaptée, des preuves réelles et une procédure d’installation vérifiée.
- Les pages restent utilisables sans effet animé et sans ressources tierces non nécessaires.

Ne pas inventer un score de réussite : obtenir des observations simples lors de tests de tâches avant de choisir des mesures quantitatives.

## 9. Usage des références IA

- **Agent Skills** : reprendre au besoin les workflows ciblés `spec-driven-development`, `planning-and-task-breakdown`, `frontend-ui-engineering` et `performance-optimization` pour rendre les prompts plus précis et les preuves de fin explicites. Ne pas installer par défaut les 25 skills ni remplacer les consignes déjà présentes dans les dépôts. Si un skill est copié seul, vérifier s’il dépend de checklists communes que le mode d’installation n’emporte pas.
- **Hallmark** : utiliser `study` pour extraire des repères d’une référence autorisée, `audit` pour établir une liste de problèmes sans édition automatique, puis éventuellement `redesign` pour produire une piste. Garder le fichier [`../DESIGN.md`](../DESIGN.md) comme direction finale et revoir toute proposition avec la démarche UX ci-dessus.
- **Mesure** : le nombre de règles ou de gates annoncé par un outil n’est pas un taux de qualité. Les résultats servent à repérer des défauts ; les tâches et retours de personnes restent nécessaires pour valider la compréhension et l’usage.

Ces dépôts sont des références facultatives. Aucun skill, plugin, runtime ou dépendance de ces projets n’est installé par ce plan.

## 10. État du dépôt de démarrage

Le dossier `lowdit-site/` contient une page statique, les premiers parcours de showcase, un catalogue de modules et les documents UX, design et destinations. Les visuels actuels sont des illustrations de principe ; aucun site de module n’est créé ou publié depuis ce dépôt. Les liens de cartes pointent encore vers les dépôts source.

**Prochain incrément recommandé :** créer le site de démonstration Minigo + Repogo et vérifier son guide d’installation avec le prompt A et le prompt B. Cela produira une preuve concrète avant de développer de nombreux écrans de présentation.
