#!/bin/bash

# Script de recherche et archivage de fichiers 

# Le script doit permettre de définir une date de modification de fichier (ex 15) pour rechercher les fichier de plus de 15j par exemple
# => VARIABLE : read ou arguments (vérifier s'il est bien numérique)

# Le script doit permettre de définir un répertoire à analyser
# => VARIABLE : read ou arguments (vérifier s'il existe)

# Le script créé un répertoire backup dans la home du user qui lance le script (ou vérifier s'il existe)
# mkdir

# Le script lance une commande find pour rechercher les éléments de type fichier qui ont pour name un pattern "*.log*" de plus de 15j et les copie dans /backup
# commande find : man find



# Le script créé une archive dans la home du user avec pour nom : log.{date formatée}.tar.gz et pour contenu les fichier du répertoire /backup
# tar 


## On peut réaliser des fonctions 
