# READ ME


Zoo Arcadia est une application web, créé pour l'amélioration de l'expérience visiteur afin qu'ils puissent decouvrir les different aspects du zoo, les animaux et les habitats.

### Technologies Utilisées
-------------------------

* **HTML5** pour structurer le contenu
* **CSS3** pour styliser et mettre en page
* **JavaScript** pour ajouter des fonctionnalités interactives
* **PHP** langage de programmation serveur
* **MySQL** système de gestion de base de données relationnelles
* **phpMyAdmin** outil de gestion de base de données en ligne
* **WAMP** environnement de développement web
* **VS Code** éditeur de code source


# Déploiement de l'application en local

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre machine :

- [XAMPP] (inclut Apache, MySQL, PHP)
- [phpMyAdmin] pour gérer les bases de données SQL
- [MongoDB] pour la base de données NoSQL
- [Composer]) (pour la gestion des dépendances PHP)

### Installation
--------------

**Étape 1 : Télécharger et extraire le projet**
- Allez sur le répertoire GitHub du projet Zoo-Arcadia et cliquez sur le bouton "Code".
- Cliquez sur "Télécharger ZIP" pour télécharger le projet sous forme de fichier ZIP.
- Extraire le fichier ZIP dans un répertoire de votre machine locale.

**Étape 2 : Importer le schéma de base de données**
- Ouvrez votre outil de gestion de base de données MySQL, comme phpMyAdmin.
- Créez une nouvelle base de données pour le projet Zoo-Arcadia.
- Importez le schéma de base de données en exécutant le script SQL situé dans le répertoire database du projet.
- Le script SQL créera les tables et les relations nécessaires pour le projet.
  
**Étape 3 : Configurer la connexion à la base de données**
- Ouvrez le fichier db_config.php situé dans le répertoire includes du projet.
- Mettez à jour les paramètres de connexion à la base de données pour correspondre à votre environnement local 


