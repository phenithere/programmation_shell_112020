#!/bin/bash

#Script :
#En utilisant des variables
set -x

#Variabilise le nom du repertoire : rep=backup new : rep=sauvegarde
rep=sauvegarde

#Création d'un repertoire backup dans la home directory du user qui lance le script (mkdir)

echo "Creation du repertoire $HOME/$rep" 
mkdir $HOME/$rep 2>/dev/null  # mise en rebut de la sortie stderr
#mkdir ~/$rep

#Affichage des propriété du répertoire backup (ls -ld rep)
echo "Propriétés :"
ls -ld  $HOME/$rep
