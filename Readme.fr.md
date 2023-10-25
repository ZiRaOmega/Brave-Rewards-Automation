# Script d'Automatisation des Récompenses pour Navigateur Brave & Bing - Version 1.0 (Édition Windows)

Ce script a été créé par xCryptoPandax et est destiné uniquement à des fins éducatives. Il est crucial de noter que ce script n'est pas destiné à un usage malveillant ou à violer les Conditions d'Utilisation du Navigateur Brave et des Récompenses Bing. Utilisez ce script à vos propres risques, l'auteur décline toute responsabilité pour toute interdiction ou perte de BAT (Basic Attention Tokens) encourue en raison de l'utilisation de ce script.

## Vue d'ensemble

Le script est conçu pour imiter l'interaction humaine avec le navigateur Brave et le moteur de recherche Bing pour automatiser le processus d'obtention des récompenses. L'utilisateur doit entrer des coordonnées de souris spécifiques pour que le script fonctionne correctement, qui sont utilisées pour naviguer à travers divers éléments du navigateur et du moteur de recherche Bing.

## Démarrage

1. Pour obtenir les coordonnées de la souris, utilisez la commande suivante dans PowerShell ISE: `[System.Windows.Forms.Cursor]::Position`.
2. Entrez les coordonnées obtenues dans les variables correspondantes dans le script.

## Fonctionnalité principale

1. Le script initie avec un compteur et entre dans une boucle infinie, exécutant un cycle d'actions de manière répétée.
2. Dans chaque cycle :
   - Le script lance Brave Browser, navigue vers Bing via un signet, interagit avec des articles, effectue une recherche et ferme finalement le navigateur.
   - Les clics de souris sont simulés en utilisant une fonction personnalisée `Clic-Souris` qui utilise la bibliothèque `user32.dll` pour envoyer des événements de souris au système.
   - Un timer random est incorporé pour imiter le comportement humain en mettant en pause pendant une durée aléatoire entre les actions.
   - Le terme de recherche dans Bing est mis à jour dans chaque cycle avec la valeur du compteur incrémentée pour simuler une nouvelle requête de recherche à chaque cycle.
3. Un message est affiché dans la console PowerShell indiquant l'achèvement de chaque cycle, avec des instructions sur comment terminer le script (Ctrl + C).

## Variables de Coordonnées de Souris

- `IconeBrave_X` & `IconeBrave_Y` : Coordonnées pour l'icône Brave sur la barre des tâches.
- `NouvelOnglet_X` & `NouvelOnglet_Y` : Coordonnées pour le bouton Nouvel Onglet.
- ... (toutes les autres variables de coordonnées suivent le même schéma).

## Utilisation

1. Assurez-vous d'avoir défini les bonnes coordonnées de souris.
2. Exécutez le script dans PowerShell.
3. Pour terminer le script, appuyez sur Ctrl + C dans la fenêtre PowerShell.

**Avertissement:**
Ce script est uniquement destiné à des fins éducatives. Toute mauvaise utilisation de ce script ou des informations fournies ici est strictement interdite. Assurez-vous d'avoir les droits et permissions pour exécuter des scripts de cette nature sur votre système et que vous respectez toutes les conditions d'utilisation applicables.

