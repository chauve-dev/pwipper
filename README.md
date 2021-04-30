# PWIPPER - Projet Ruby on Rails
### LP CASIR  2020 -2021
#### JEANTET Joey - REVELARD Raphaël

### Environnement néscessaire
- Ruby: 3.0.0
- Rails: 6.1.3
- Node: 14.14.0 ou +

### Installation
Cloner le projet en local:
``git clone https://github.com/jojojojojota/pwipper.git``

Installer le projet:

``yarn install
bundle install
rake db:migrate
rake db:seed
``

Lancer un serveur local:
``bin/rails server``

Se rendre sur: http://127.0.0.1:3000

### Tests

Lancer la commande: ``rails test model -v``

### Fonctionnement global de l'application

Le but de ce projet est la prise en main du framework Ruby on Rails au travers de la création d'un simili-twitter.

Le site se nomme donc Pwipper, on y publie des pweeps (=tweets) avec un message et des pourtags (équivalent hashtags) réalisés avec le signe %.



**Bandeau**

Composé de trois boutons:

 - *Home* pour aller sur la page principale (possible uniquement si connecté).

 - *Register* pour enregistrer de nouveaux utilisateurs.

 - *Login* pour choisir un profil à utiliser et accèder à son espace personnel.

   

**Page de connexion - /login**

On a le choix parmis les utilisateurs existants, sélectionnables en cliquant dessus.



**Création d'utilisateur - /utilisateurs/new**

On y accède en cliquant sur *Register* dans le bandeau.



**Page principale - /index ou /**

Affichage de l'espace personnel de l'utilisateur sélectionné, avec:

- à gauche: la liste des utilisateurs. Ils peuvent être suivient en cliquant sur le bouton en forme de croix.
- au centre, de haut en bas: les informations de l'utilisateurs, l'interface de création des pweeps et enfin l'affichage de ses propres pweeps ainsi que ceux des utilisateurs suivis.
- à droite: la liste des pourtags les plus populaires (10 maximums)




### Organisation du binôme

* 
