# Conception des systèmes d'information (Merise) via un site e-commerce

## Description
Ce projet est une base de données relationnelle conçue pour gérer les informations des utilisateurs, des produits, des catégories, des adresses et des avis d'un site e-commerce. Elle est construite avec **MySQL 8** et inclut les modèles conceptuel (MCD), physique (MPD), et logique (MLD).

---

## Modèles inclus
- **Modèle Conceptuel des Données (MCD)** : ![MCD](MCD.png)
- **Modèle Physique des Données (MPD)** : ![MPD](MPD.png)
- **Modèle Logique des Données (MLD)** : ![MLD](MLD.png)

---

## Outils utilisés
- **Visual Studio Code**: Pour écrire / Modifier le code SQL.
- **MySQL 8.0 Command Line Client** : Pour voir que tout fonctionne en affichant les tables.
- **lucid.app** : Pour créer les modèles (MCD, MPD, MLD).
- **Git/GitHub** : Gestion du code source et collaboration.

---

## Structure des fichiers
- **`BDD.sql`** : Contient le script SQL pour créer la base de données.
- **`MCD.png`** : Modèle conceptuel des données.
- **`MPD.png`** : Modèle physique des données.
- **`MLD.png`** : Modèle logique des données.

---

## Installation et configuration

### Prérequis
1. Installer un client Git pour cloner le projet depuis GitHub.
2. Avoir accès à **MySQL Command Line Client** (nous verrons comment l'avoir par la suite).

### Étapes pour configurer le projet en local
1. **Cloner le dépôt GitHub** :
   ```bash
   git clone https://github.com/HFI80Z/systemes_dinformation_merise
   cd "Conception des systèmes d'information" 
   
2. **Installer MySQL Installer et le configurer** :
   https://dev.mysql.com/downloads/installer/
   
3. **Ouvrir MySQL 8.0 Command Line et effectuer la commande** :
   ```bash
   source (chemin du fichier BDD.sql)
