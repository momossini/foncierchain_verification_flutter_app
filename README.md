# FoncierChain - Application Mobile Citoyenne

Application mobile Flutter destinée aux citoyens pour la consultation publique du registre foncier sécurisé par blockchain.

## 🚀 Objectif du MVP

Permettre à tout citoyen de vérifier l'existence, le statut et l'historique simplifié d'une parcelle de manière transparente et rapide.

## ✨ Fonctionnalités

- **Recherche Multimodale** : Par identifiant unique (`parcel_uid`) ou par adresse.
- **Détail Parcelle** : Consultation du statut officiel, de la localisation et du propriétaire actuel.
- **Timeline d'Historique** : Visualisation simplifiée des événements passés sur la parcelle.
- **Glossaire Intégré** : Compréhension simplifiée des termes techniques et administratifs.
- **Support & Aide** : FAQ et contacts pour accompagner l'utilisateur.

## 🛠 Stack Technique

- **Framework** : Flutter (Material 3)
- **Gestion d'état** : Riverpod (avec Generators)
- **Navigation** : GoRouter
- **Réseau** : Dio
- **Modèles de données** : Freezed & JsonSerializable

## ⚙️ Configuration & Installation

### Prérequis
- Flutter SDK (dernière version stable)
- Accès au backend FastAPI FoncierChain

### Installation
```bash
flutter pub get
```

### Exécution
Pour configurer l'URL du backend au build :
```bash
flutter run --dart-define=API_BASE_URL=http://votre-api:8000
```
Par défaut, l'application pointe vers `http://localhost:8000`.

## 🏗 Architecture

Le projet suit une architecture modulaire et propre :
- `lib/app/` : Configuration globale et routage.
- `lib/core/` : Thème, configuration réseau, constantes.
- `lib/data/` : Modèles de données, repositories et sources API.
- `lib/features/` : Logique et UI découpées par fonctionnalités (Home, Search, Detail, etc.).
- `lib/shared/` : Widgets et états réutilisables.

## 🧪 Tests

Exécuter la suite de tests unitaires et de widgets :
```bash
flutter test
```
