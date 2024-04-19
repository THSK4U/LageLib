Project context
Dans de nombreuses bibliothèques, la gestion des ressources peut être un défi complexe et fastidieux. Les tâches manuelles de suivi des livres, des emprunts et des membres peuvent entraîner des erreurs et une inefficacité dans la gestion globale de la bibliothèque. Par conséquent, un dashboard de gestion de bibliothèque offre une solution numérique pour automatiser et rationaliser ces processus, ce qui permet d'améliorer l'efficacité opérationnelle et la satisfaction des utilisateurs.

​

​

Fonctionnalités Principales

​

L'application de dashboard de gestion de bibliothèque offrira les fonctionnalités suivantes :

Gestion des Livres : Ajout, modification et suppression de livres avec des détails tels que le titre, l'auteur, l'éditeur, l'année de publication, etc.
Gestion des Membres : Ajout, modification et suppression de membres avec des détails tels que le nom, l'adresse, le numéro de téléphone, etc.
**Gestion des Emprunts **: Enregistrement des emprunts de livres , avec la possibilité de spécifier la date d'emprunt et la date de retour prévue.
**Suivi des Retours **: Enregistrement des retours de livres , avec la mise à jour automatique des informations sur les emprunts.
Consultation des Statistiques : Consulter l'utilisation de la bibliothèque, y compris le nombre des livres empruntés, les membres les plus actifs(qui ont fait des empreinte les plus), les nombre des livres ajoutés récemment(dans la dernière semaine), etc.
​

​

User stories de l'administrateur:

​

1.En tant qu'administrateur, je veux pouvoir m'authentifier sur le dashboard avec des identifiants sécurisés afin d'accéder aux fonctionnalités administratives.

​

++Critères d'acceptation : ++

Je dois saisir un nom d'utilisateur et un mot de passe pour accéder au dashboard.
Les identifiants doivent être vérifiés par le système pour assurer l'authentification sécurisée.
En cas des identifiants invalides, je dois recevoir un message d'erreur approprié.
​

2.En tant qu'administrateur, je veux pouvoir gérer les livres de la bibliothèque en ajoutant, modifiant ou supprimant des livres selon les besoins.

++Critères d'acceptation :++

Je dois avoir accès à un tableau de bord de gestion des livres.
Je dois pouvoir ajouter de nouveaux livres en saisissant leurs détails telles que le titre, l'auteur, l'éditeur, l'année de publication, etc.
Je dois pouvoir modifier les details des livres existants ou les supprimer de la base de données si nécessaire.
​

3.En tant qu'administrateur, je veux pouvoir gérer les membres de la bibliothèque en ajoutant, modifiant ou supprimant des membres selon les besoins.

++Critères d'acceptation :++

Je dois avoir accès à un tableau de bord de gestion des membres.
Je dois pouvoir ajouter de nouveaux membres en saisissant leurs informations telles que le nom, le prenom, l'adresse, le numéro de téléphone, l'email.
Je dois pouvoir modifier les informations des membres existants ou les supprimer de la base de données si nécessaire.
​

​

4.En tant qu'administrateur, je veux pouvoir visualiser les emprunts en cours pour suivre l'état des livres empruntés par les membres.

++Critères d'acceptation :++

Je dois avoir accès à une liste des emprunts en cours.
Chaque emprunt doit afficher les détails du livre emprunté, le nom du membre emprunteur, la date d'emprunt et la date de retour prévue.
Je dois pouvoir filtrer les emprunts par statut (en cours, en retard, terminé, etc.) pour une gestion efficace.
​

​

5.En tant qu'administrateur, je veux pouvoir consulter les statistiques d'utilisation de la bibliothèque, y compris les informations suivantes :

++Critères d'acceptation :++

Je dois avoir accès à une section dédiée dans le tableau de bord administratif pour consulter les statistiques d'utilisation de la bibliothèque. Je veux voir le nombre total de livres empruntés.
Je veux pouvoir visualiser un classement des membres les plus actifs de la bibliothèque(qui ont fait des empreinte les plus)
Je veux être informé du nombre de livres ajoutés récemment à la bibliothèque( les livres ajoutés au cours de la dernière semaine).
Je veux pouvoir consulter d'autres statistiques pertinentes sur l'utilisation de la bibliothèque, telles que le nombre total de membres inscrits.
Les données de statistiques doivent être mises à jour en temps réel pour refléter les dernières informations disponibles sur l'utilisation de la bibliothèque.
​

##Spécifications Techniques##

L'application sera développée en utilisant la technologie Java EE.
La base de données PostgreSQL/MySQL sera utilisée pour stocker les données relatives aux produits.
Les pages web dynamiques seront créées à l'aide de JavaServer Pages (JSP), offrant une intégration étroite avec Java et simplifiant le développement de l'interface utilisateur.
L'interface utilisateur sera développée en HTML, CSS et JavaScript.
Les servlets Java seront utilisés pour gérer la logique métier et les requêtes HTTP, permettant une architecture MVC (Modèle-Vue-Contrôleur) pour une séparation claire des responsabilités.
Pour la gestion des interactions avec la base de données, la technologie JDBC (Java Database Connectivity) sera utilisée pour établir des connexions et exécuter des requêtes SQL.
