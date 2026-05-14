# Plan de Développement - Application Mobile Citoyenne FoncierChain

Ce plan organise le développement de l'application mobile citoyenne en phases cohérentes, du setup initial à la livraison du MVP.

---

## Phase 1 : Setup & Infrastructure

### Objectif
Mettre en place l'environnement de développement Flutter et l'architecture de base du projet.

### Tâches groupées

#### 1.1 Initialisation du projet Flutter
- [ ] Créer le projet Flutter avec la commande `flutter create`
- [ ] Configurer le fichier `pubspec.yaml` avec les dépendances requises :
  - `go_router` pour le routing
  - `dio` pour les appels API
  - `provider` pour la gestion d'état
  - `freezed` et `json_serializable` pour les modèles (optionnel)
  - `flutter_lints` pour la qualité du code
- [ ] Configurer les variables d'environnement pour la base URL API
- [ ] Vérifier la configuration Android/iOS pour le build

#### 1.2 Structure de l'architecture
- [ ] Créer la structure de dossiers selon l'architecture recommandée :
  ```
  lib/
    core/
      config/
      constants/
      network/
      error/
      theme/
    data/
      models/
      sources/
      repositories/
    features/
      home/
      search/
      parcel_detail/
      glossary/
      support/
    shared/
      widgets/
      states/
    app/
      router/
      app.dart
  ```
- [ ] Créer les fichiers de configuration de base dans `core/config`
- [ ] Définir les constantes dans `core/constants` (API endpoints, messages d'erreur)

---

## Phase 2 : Couche Réseau & Modèles de Données

### Objectif
Implémenter la communication avec l'API publique et les modèles de données.

### Tâches groupées

#### 2.1 Configuration réseau
- [ ] Créer le client HTTP avec Dio dans `core/network`
- [ ] Implémenter l'intercepteur pour la gestion des erreurs réseau
- [ ] Configurer les timeouts et retry logic
- [ ] Créer la classe `ApiEnvelope` pour envelopper les réponses API

#### 2.2 Modèles de données
- [ ] Créer le modèle `ParcelPublic` avec tous les champs requis
- [ ] Créer le modèle `ParcelHistoryPublic` pour l'historique
- [ ] Implémenter la sérialisation JSON (manuelle ou avec json_serializable)
- [ ] Ajouter les méthodes `fromJson` et `toJson`
- [ ] Créer les modèles de réponse API si nécessaire

#### 2.3 Repositories & Sources
- [ ] Créer l'interface du repository parcel dans `data/repositories`
- [ ] Implémenter la source de données API dans `data/sources`
- [ ] Créer les méthodes :
  - `searchByParcelUid(String parcelUid)`
  - `searchByAddress(String address)`
  - `getParcelDetail(String id)`
- [ ] Gérer les erreurs API et les convertir en erreurs métier

---

## Phase 3 : Routing & Navigation

### Objectif
Mettre en place le système de navigation entre les écrans.

### Tâches groupées

#### 3.1 Configuration du routeur
- [ ] Configurer `go_router` dans `app/router`
- [ ] Définir les routes principales :
  - `/` → Splash
  - `/home` → Accueil
  - `/search-results` → Résultats de recherche
  - `/parcel-detail/:id` → Détail parcelle
  - `/glossary` → Glossaire
  - `/support` → Support
  - `/error` → Écran erreur
- [ ] Implémenter les guards ou middleware si nécessaire
- [ ] Tester la navigation entre les routes

#### 3.2 Écran Splash
- [ ] Créer l'écran Splash minimal
- [ ] Ajouter un logo ou branding
- [ ] Implémenter la redirection automatique vers l'accueil après X secondes

---

## Phase 4 : Écran Accueil

### Objectif
Implémenter l'écran d'accueil avec la recherche.

### Tâches groupées

#### 4.1 UI de l'écran d'accueil
- [ ] Créer le widget `HomeScreen` dans `features/home`
- [ ] Ajouter le titre et la description du service
- [ ] Implémenter le champ de recherche principal
- [ ] Ajouter le sélecteur de mode (identifiant / adresse)
- [ ] Ajouter le bouton de recherche
- [ ] Ajouter les liens rapides vers glossaire et support

#### 4.2 Logique de recherche
- [ ] Créer le provider/state pour la recherche
- [ ] Implémenter la validation des entrées
- [ ] Connecter le formulaire au repository
- [ ] Gérer les états : loading, success, error, empty
- [ ] Rediriger vers l'écran des résultats après recherche réussie

#### 4.3 États UX
- [ ] Implémenter l'état de chargement (skeleton ou spinner)
- [ ] Implémenter l'état d'erreur avec message clair
- [ ] Implémenter l'état de validation des champs

---

## Phase 5 : Écran Résultats de Recherche

### Objectif
Afficher les résultats de recherche de manière claire.

### Tâches groupées

#### 5.1 UI des résultats
- [ ] Créer le widget `SearchResultsScreen` dans `features/search`
- [ ] Créer le widget de carte de résultat (`ParcelResultCard`)
- [ ] Afficher pour chaque résultat :
  - Identifiant parcelle
  - Adresse
  - Statut (avec badge coloré)
  - Propriétaire actuel (si disponible)
  - Bouton "Voir le détail"

#### 5.2 Gestion des états
- [ ] Implémenter l'état vide ("Aucune parcelle trouvée")
- [ ] Implémenter l'état d'erreur réseau
- [ ] Implémenter l'état de chargement
- [ ] Ajouter la pagination si l'API le supporte

#### 5.3 Navigation
- [ ] Connecter le bouton "Voir le détail" à la route de détail
- [ ] Passer l'ID de la parcelle en paramètre

---

## Phase 6 : Écran Détail Parcelle

### Objectif
Afficher les informations complètes d'une parcelle.

### Tâches groupées

#### 6.1 UI du détail
- [ ] Créer le widget `ParcelDetailScreen` dans `features/parcel_detail`
- [ ] Afficher les informations principales :
  - Parcel UID
  - Adresse
  - District
  - Ville
  - Statut (avec badge)
  - Propriétaire actuel (si autorisé)
- [ ] Ajouter un indicateur de fiabilité/preuve numérique si disponible

#### 6.2 Historique simplifié
- [ ] Créer le widget de timeline verticale pour l'historique
- [ ] Afficher pour chaque entrée :
  - Date
  - Type d'événement
  - Résumé humain
  - Ancien/Nouveau propriétaire (si disponible)
- [ ] Rendre la timeline scrollable si longue

#### 6.3 États UX
- [ ] Implémenter l'état de chargement du détail
- [ ] Implémenter l'état d'erreur
- [ ] Ajouter un bouton de retour aux résultats

---

## Phase 7 : Écrans Glossaire & Support

### Objectif
Fournir de l'aide et de la compréhension à l'utilisateur.

### Tâches groupées

#### 7.1 Écran Glossaire
- [ ] Créer le widget `GlossaryScreen` dans `features/glossary`
- [ ] Définir les entrées du glossaire (parcelle, mutation, statuts, etc.)
- [ ] Implémenter une recherche dans le glossaire
- [ ] Afficher les définitions de manière claire et simple
- [ ] Ajouter une liste alphabétique ou catégories

#### 7.2 Écran Support
- [ ] Créer le widget `SupportScreen` dans `features/support`
- [ ] Créer une FAQ simple avec questions/réponses
- [ ] Ajouter les consignes pour parcelle introuvable
- [ ] Ajouter les consignes pour données erronées
- [ ] Ajouter les moyens de contact (placeholder pour démo)

---

## Phase 8 : Gestion des Erreurs & États Globaux

### Objectif
Assurer une gestion robuste des erreurs et des états.

### Tâches groupées

#### 8.1 Écrans d'erreur
- [ ] Créer l'écran `NetworkErrorScreen`
- [ ] Créer l'écran `NoResultScreen`
- [ ] Ajouter des boutons de retry ou retour
- [ ] Utiliser des illustrations ou icônes appropriées

#### 8.2 Gestion centralisée des erreurs
- [ ] Créer une classe de gestion d'erreurs dans `core/error`
- [ ] Définir les types d'erreurs (réseau, API, validation)
- [ ] Créer des messages d'erreur en français clair
- [ ] Implémenter le logging (sans données sensibles)

#### 8.3 États de chargement
- [ ] Créer des widgets de skeleton loading réutilisables
- [ ] Standardiser les spinners et indicateurs de chargement
- [ ] Appliquer les états de chargement sur tous les écrans API

---

## Phase 9 : Thème & Design System

### Objectif
Créer une identité visuelle cohérente et institutionnelle.

### Tâches groupées

#### 9.1 Configuration du thème
- [ ] Définir la palette de couleurs dans `core/theme`
- [ ] Configurer les typographies (titres, corps, labels)
- [ ] Définir les espacements standards
- [ ] Créer le thème Material Design 3

#### 9.2 Composants UI partagés
- [ ] Créer le bouton primaire réutilisable
- [ ] Créer le bouton secondaire
- [ ] Créer le champ de texte réutilisable
- [ ] Créer le badge de statut
- [ ] Créer la carte de contenu
- [ ] Créer le bloc d'aide/erreur

#### 9.3 Responsive
- [ ] Optimiser pour smartphone (priorité)
- [ ] Tester sur différentes tailles d'écran
- [ ] Adapter la mise en page pour tablette (optionnel)

---

## Phase 10 : Sécurité & Confidentialité

### Objectif
Assurer la protection des données et le respect des contraintes de sécurité.

### Tâches groupées

#### 10.1 Validation des données
- [ ] Vérifier que seules les données publiques sont affichées
- [ ] Ne pas logger de données sensibles localement
- [ ] Valider que les modèles correspondent exactement au schéma public

#### 10.2 Configuration sécurité
- [ ] Utiliser des variables d'environnement pour la base URL
- [ ] Ne pas embarquer de secrets dans le code
- [ ] Traiter les erreurs API sans exposer de stack trace
- [ ] Vérifier que les requêtes n'exposent pas de données internes

---

## Phase 11 : Tests & Validation

### Objectif
Valider le fonctionnement de l'application selon les critères de succès.

### Tâches groupées

#### 11.1 Tests unitaires
- [ ] Tester les modèles de données (sérialisation/désérialisation)
- [ ] Tester les repositories
- [ ] Tester les providers/states
- [ ] Tester les utilitaires de formatage

#### 11.2 Tests d'intégration
- [ ] Tester les flux de navigation
- [ ] Tester les appels API avec mock
- [ ] Tester la gestion des erreurs réseau

#### 11.3 Tests manuels
- [ ] Exécuter le scénario de démo complet :
  1. Ouverture de l'application
  2. Recherche par UID
  3. Consultation des résultats
  4. Ouverture du détail
  5. Consultation de l'historique
  6. Consultation du glossaire
  7. Consultation du support
- [ ] Tester les cas d'erreur (réseau, aucun résultat)
- [ ] Vérifier l'absence de données sensibles

---

## Phase 12 : Livraison

### Objectif
Préparer et livrer le MVP.

### Tâches groupées

#### 12.1 Finalisation
- [ ] Nettoyer le code (remove comments, unused imports)
- [ ] Vérifier la qualité du code avec linter
- [ ] Mettre à jour la documentation README
- [ ] Créer un guide de démarrage rapide

#### 12.2 Build & Déploiement
- [ ] Générer le build Android APK/APK
- [ ] Tester le build sur un appareil physique ou émulateur
- [ ] Vérifier la connexion au backend public
- [ ] Documenter la procédure de build

#### 12.3 Documentation
- [ ] Documenter l'architecture du projet
- [ ] Documenter les endpoints API utilisés
- [ ] Documenter les variables d'environnement requises
- [ ] Créer un guide de contribution

---

## Critères de Validation du MVP

L'application sera considérée comme livrée lorsque :

- [ ] Un citoyen peut lancer une recherche par identifiant
- [ ] Un citoyen peut lancer une recherche par adresse
- [ ] Les résultats s'affichent correctement
- [ ] Le détail d'une parcelle est lisible
- [ ] Le statut est clairement visible
- [ ] L'historique simplifié est compréhensible
- [ ] Les écrans glossaire et support sont présents
- [ ] Les cas sans résultat et erreur réseau sont bien gérés
- [ ] Aucune donnée interne sensible n'est exposée
- [ ] L'application est exécutable localement et connectée au backend

---

## Fonctionnalités Post-MVP (Optionnelles)

Si le temps le permet, ces fonctionnalités pourront être ajoutées :

- [ ] Favoris ou recherches récentes en mémoire locale
- [ ] Scan QR code de parcelle
- [ ] Partage du lien de consultation
- [ ] Carte simplifiée de la parcelle
- [ ] Animations de transition
- [ ] Mise en cache locale des résultats
- [ ] Mode sombre
- [ ] Accessibilité (VoiceOver, TalkBack)
