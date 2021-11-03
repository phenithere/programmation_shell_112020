#!/bin/bash

#Script :
#En utilisant des variables
set -x

#Variabilise le nom du repertoire : rep=backup new : rep=sauvegarde
rep=sauvegarde

#Création d'un repertoire backup dans la home directory du user qui lance le script (mkdir)
# Utilisation de la variable reserve $0 : nom du script en cours tel qu'il est lancé
# Utilisation de la substitution de commande $(basename $0) pour interpreter le resultat dans echo
echo "Script lancé: $(basename $0)"

echo "Creation du repertoire $HOME/$rep" 
mkdir $HOME/$rep 2>/dev/null  # mise en rebut de la sortie stderr
#mkdir ~/$rep

#Affichage des propriété du répertoire backup (ls -ld rep)
echo "Propriétés :"
ls -ld  $HOME/$rep
