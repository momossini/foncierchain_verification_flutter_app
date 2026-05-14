# Application Mobile Citoyenne FoncierChain — Spécification Produit et Développement

## 1. Objectif

Développer l’**application mobile citoyenne** de FoncierChain, destinée au grand public pour vérifier l’existence, le statut et l’historique simplifié d’une parcelle. L’application doit prolonger le portail public web avec une expérience pensée mobile, simple, rapide et rassurante.

Le but du MVP n’est pas de permettre des opérations administratives, mais de donner au citoyen un accès lisible à la **recherche foncière publique** via identifiant de parcelle ou adresse, en s’appuyant exclusivement sur les endpoints publics exposés par le backend FastAPI.

---

## 2. Finalité du produit

L’application mobile citoyenne doit répondre à une promesse claire :

- permettre à un citoyen de rechercher une parcelle ;
- afficher le statut actuel d’une parcelle ;
- montrer le propriétaire actuel si ce champ est publiquement autorisé ;
- exposer un historique simplifié ;
- orienter l’utilisateur grâce à un glossaire et un support d’assistance. [file:78]

Cette application est une interface de **consultation publique**, pas un outil de création, d’édition ou de transfert. Les opérations sensibles restent côté agent/admin.

---

## 3. Positionnement MVP

Pour le MVP, l’application doit être volontairement légère, démontrable et robuste.

### 3.1 Ce que l’application doit faire

- Recherche par `parcel_uid` ;
- Recherche par adresse ;
- Consultation d’un résultat de recherche ;
- Consultation du détail d’une parcelle ;
- Consultation d’un historique simplifié ;
- Consultation du glossaire ;
- Consultation d’une page support / aide. [file:78]

### 3.2 Ce que l’application ne doit pas faire

- Pas de login citoyen dans le MVP ;
- Pas de création de parcelle ;
- Pas de transfert de propriété ;
- Pas de dépôt de dossier complexe ;
- Pas de workflow administratif multi-étapes ;
- Pas de dépendance à une blockchain finale obligatoire côté mobile. [file:78]

---

## 4. Stack recommandée

### 4.1 Technologie mobile

Développer en **Flutter**, car l’architecture globale du projet prévoit déjà la compatibilité avec Flutter côté interfaces, en plus de React pour le web.

### 4.2 Stack minimum attendue

- **Flutter**
- **Dart**
- `go_router` ou routeur équivalent
- `dio` ou `http` pour le client API
- gestion d’état simple et propre, `Provider`
- `freezed` / `json_serializable` si l’agent veut structurer les modèles proprement

### 4.3 Contraintes

- L’application consomme uniquement les routes publiques du backend ;
- aucune logique métier sensible ne doit être dupliquée côté mobile ;
- l’application doit supporter les états `loading`, `empty`, `error`, `success` sur tous les écrans de recherche et détail ;
- l’UX doit être prioritairement pensée pour Android smartphone dans le cadre de la démo MVP.

---

## 5. Parcours utilisateur à couvrir

L’application doit couvrir les parcours suivants.

### 5.1 Parcours 1 — Recherche par identifiant

1. Le citoyen ouvre l’application.
2. Il arrive sur l’écran d’accueil.
3. Il saisit un `parcel_uid`.
4. L’application appelle l’API publique de recherche.
5. Elle affiche le ou les résultats correspondants.
6. L’utilisateur ouvre le détail d’une parcelle.
7. Il consulte le statut actuel et l’historique simplifié.

### 5.2 Parcours 2 — Recherche par adresse

1. Le citoyen ouvre la recherche.
2. Il saisit une adresse ou un libellé d’emplacement.
3. L’application interroge l’API publique de recherche par adresse.
4. Elle affiche une liste de résultats.
5. L’utilisateur sélectionne une parcelle et consulte sa fiche.

### 5.3 Parcours 3 — Compréhension et assistance

1. Le citoyen ne comprend pas un statut ou un terme.
2. Il ouvre le glossaire.
3. Il lit une définition simple.
4. Si nécessaire, il ouvre la page support pour savoir quoi faire ensuite.

---

## 6. Écrans à développer

Les maquettes du portail public existant suggèrent déjà cinq écrans de référence côté consultation publique : **Accueil**, **Résultats de recherche**, **Détail parcelle**, **Glossaire** et **Support**. L’application mobile citoyenne doit reprendre ce noyau fonctionnel en version native mobile.

### 6.1 Écrans obligatoires MVP

1. **Splash / boot minimal**
2. **Accueil**
3. **Résultats de recherche**
4. **Détail parcelle**
5. **Historique simplifié** (écran dédié ou section du détail)
6. **Glossaire**
7. **Support / aide**
8. **Écran erreur réseau**
9. **Écran aucun résultat**

### 6.2 Écrans facultatifs si temps disponible

- favoris ou recherches récentes en mémoire locale volatile ;
- scan QR si un code de parcelle existe plus tard ;
- partage du lien de consultation ;
- carte simplifiée si la géométrie devient stable.

---

## 7. Détail fonctionnel par écran

### 7.1 Écran Accueil

L’écran d’accueil est la porte d’entrée principale.

Il doit contenir :

- un titre clair ;
- une brève explication du service ;
- un champ de recherche principal ;
- un sélecteur simple “rechercher par identifiant” / “rechercher par adresse” ;
- un bouton principal de recherche ;
- accès rapide au glossaire et au support.

### 7.2 Écran Résultats de recherche

Cet écran doit afficher les résultats de manière claire sur mobile.

Chaque item doit montrer au minimum :

- identifiant parcelle ;
- adresse ;
- statut ;
- propriétaire actuel si publiquement exposable ;
- action “Voir le détail”.

Prévoir aussi :

- état vide ;
- état erreur ;
- pagination ou chargement progressif si l’API le demande. [file:78]

### 7.3 Écran Détail parcelle

La fiche détail est le cœur de l’application.

Elle doit afficher :

- `parcel_uid` ;
- adresse ;
- district ;
- ville ;
- statut ;
- propriétaire actuel si autorisé publiquement ;
- historique simplifié ;
- indicateur de fiabilité ou preuve numérique si le backend remonte une information de ce type. [file:351][file:78]

Le détail ne doit jamais exposer :

- données internes sensibles ;
- logs complets d’audit ;
- identifiants privés non autorisés. [file:78]

### 7.4 Historique simplifié

L’historique doit être lisible par un non-technicien.

Chaque entrée doit présenter :

- date ;
- type d’événement ;
- résumé humain de l’action ;
- éventuellement ancien / nouveau propriétaire si le backend l’expose publiquement. [file:78]

L’affichage recommandé est une **timeline mobile verticale**.

### 7.5 Écran Glossaire

Cet écran sert à vulgariser les termes fonciers et les statuts.

Exemples d’entrées attendues :

- parcelle ;
- mutation ;
- historique ;
- statut actif ;
- statut en revue ;
- doublon rejeté.

### 7.6 Écran Support

Cet écran doit aider le citoyen à savoir quoi faire ensuite.

Il peut contenir :

- FAQ simple ;
- consignes si une parcelle est introuvable ;
- consignes si les données semblent erronées ;
- moyens de contact institutionnels ou placeholder propre pour la démo.

---

## 8. Contrat API à utiliser

L’application mobile citoyenne ne doit utiliser que les endpoints publics documentés.

### 8.1 Endpoints publics minimaux

- `GET /public/parcels/search?parceluid=...`
- `GET /public/parcels/search?address=...`
- `GET /public/parcels/{id}` ou endpoint public équivalent

### 8.2 Données publiques attendues

Le backend indique que le public peut voir :

- `parceluid` ;
- adresse ;
- statut ;
- propriétaire actuel ;
- historique simplifié.

Le backend indique aussi explicitement que le public ne doit pas voir :

- données internes sensibles ;
- identifiants privés ;
- payloads d’audit complets.

### 8.3 Performance

Les opérations de lecture publique doivent rester rapides, avec un objectif local inférieur à 300 ms pour une lecture simple dans le MVP. L’application doit donc être pensée pour une UX légère, sans lourdeur réseau inutile. [file:78]

---

## 9. Modèles de données minimum

### 9.1 ParcelPublic

```dart
class ParcelPublic {
  final String id;
  final String parcelUid;
  final String address;
  final String district;
  final String city;
  final String status;
  final String? currentOwnerName;
  final List<ParcelHistoryPublic> history;
}
```

### 9.2 ParcelHistoryPublic

```dart
class ParcelHistoryPublic {
  final String id;
  final String actionType;
  final String? previousOwner;
  final String? newOwner;
  final String? details;
  final DateTime createdAt;
}
```

### 9.3 ApiEnvelope

```dart
class ApiEnvelope<T> {
  final bool success;
  final T? data;
  final String? message;
  final ApiError? error;
}

class ApiError {
  final String code;
  final String message;
}
```

```

Le parsing doit respecter l’enveloppe standard du backend, avec `success`, `data`, `message`, `error`. [file:78]

---

## 10. Architecture recommandée

```txt
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
  main.dart
```

### 10.1 Principes

- séparer UI, data, repository et network ;
- centraliser la base URL API ;
- convertir toutes les réponses backend dans un client unifié ;
- encapsuler les erreurs réseau / timeouts / réponses vides ;
- garder l’architecture assez simple pour aller vite sur le MVP.

---

## 11. Règles UX impératives

### 11.1 Simplicité

Le citoyen ne doit jamais avoir l’impression d’utiliser un outil interne d’administration. L’interface doit être sobre, lisible, accessible et rassurante.

### 11.2 Lisibilité

Chaque écran doit répondre clairement à une question :

- “Que dois-je chercher ?”
- “Ai-je trouvé une parcelle ?”
- “Quel est son statut ?”
- “Que signifie ce statut ?”
- “Que faire si je ne comprends pas ?”

### 11.3 États obligatoires

Prévoir partout :

- chargement ;
- aucun résultat ;
- erreur réseau ;
- erreur API métier publique ;
- succès. [file:78]

### 11.4 Messages

Tous les messages doivent être écrits dans un français clair et non technique.

Exemples :

- “Aucune parcelle trouvée pour cette recherche.”
- “Impossible de contacter le service pour le moment.”
- “Cette parcelle est enregistrée et visible dans le registre public.”

---

## 12. Design mobile attendu

### 12.1 Style

- design institutionnel moderne ;
- sobre ;
- crédible ;
- pas d’interface gadget ;
- accent mis sur la clarté et la confiance.

### 12.2 Composants UI minimum

- champ de recherche principal ;
- toggle de mode de recherche ;
- cartes de résultat ;
- badge de statut ;
- timeline historique ;
- bloc d’aide ;
- bloc d’erreur ;
- bouton primaire ;
- bouton secondaire ;
- skeleton loading.

### 12.3 Responsive cible

L’app doit être optimisée d’abord pour smartphone. La tablette est optionnelle pour le MVP.

---

## 13. Sécurité et confidentialité

Même si l’application est publique, elle doit respecter strictement la frontière entre données publiques et données internes.

### 13.1 Obligations

- ne jamais afficher un champ non prévu par le schéma public ; [file:78]
- ne jamais journaliser localement des données sensibles ;
- ne pas embarquer de secrets dans l’application ;
- utiliser des variables d’environnement pour la base URL ;
- traiter proprement les erreurs API sans exposer de stack trace brute.

### 13.2 Note produit

Si la réglementation locale impose une anonymisation partielle du propriétaire, l’application devra suivre strictement le schéma public retourné par le backend sans forcer plus d’affichage. Le plan backend mentionne explicitement cette vigilance. [file:76][file:78]

---

## 14. Priorité de livraison

### 14.1 Priorité absolue

1. Setup Flutter propre
2. Écran Accueil
3. Recherche par identifiant et adresse
4. Écran Résultats
5. Écran Détail parcelle
6. Historique simplifié
7. Glossaire
8. Support
9. Gestion des erreurs et états vides

### 14.2 Priorité secondaire

10. Animations légères
11. Mise en cache locale simple
12. Partage de résultat
13. Carte simplifiée

Le MVP doit d’abord garantir un scénario de consultation publique fluide de bout en bout. [file:78]

---

## 15. Critères de validation

L’application mobile citoyenne est considérée comme prête si :

- un citoyen peut lancer une recherche par identifiant ;
- un citoyen peut lancer une recherche par adresse ;
- les résultats s’affichent correctement ;
- le détail d’une parcelle est lisible ;
- le statut est clairement visible ;
- l’historique simplifié est compréhensible ;
- les écrans glossaire et support sont présents ;
- les cas sans résultat et erreur réseau sont bien gérés ;
- aucune donnée interne sensible n’est exposée. [file:78]

---

## 16. Scénario de démo cible

L’application doit permettre ce scénario sans intervention manuelle :

1. L’utilisateur ouvre l’application.
2. Il recherche une parcelle par UID.
3. Il obtient un résultat.
4. Il ouvre la fiche détail.
5. Il consulte le statut et l’historique simplifié.
6. Il ouvre le glossaire pour comprendre un terme.
7. Il ouvre ensuite le support pour voir la marche à suivre en cas de problème.

---

## 17. Ce que l’agent mobile ne doit pas faire

- Ne pas transformer l’application citoyenne en portail agent.
- Ne pas demander une authentification complexe dans le MVP.
- Ne pas ajouter des workflows administratifs hors périmètre.
- Ne pas dépendre d’une carte avancée si la donnée géographique n’est pas prête.
- Ne pas afficher des informations non publiques même si elles existent ailleurs côté backend. [file:78]
- Ne pas surcharger le MVP avec des fonctionnalités sociales, notifications ou onboarding inutile.

---

## 18. Livrable attendu

Le livrable attendu est une application Flutter exécutable localement, connectée au backend public FastAPI, avec :

- navigation propre ;
- recherche publique fonctionnelle ;
- détail parcelle lisible ;
- historique simplifié ;
- glossaire ;
- support ;
- architecture de code claire ;
- gestion correcte des erreurs et des états de chargement.

Le but est de produire une **application mobile citoyenne crédible, simple, mobile-first et immédiatement démontrable**, alignée avec le portail public existant et les endpoints publics du backend FoncierChain.
