#!/bin/bash

# Script demo pour utilisation variables reservees au shell : parametres

echo "Script lance : $(basename $0)"


echo "Nombre d'arguments passés au script : $#"

nbre_argument=$#

echo "Afficher la liste de parametres : $@"

echo "Affichage 1er argument : $1"

shift $(($# -1))

echo "Affichage dernier argument : $1"

#Écrire un script shell qui affiche :
#– son nom,
#– le nombre de ses arguments,
#– la liste de ses arguments,
#– son premier argument
#– son dernier argument
#-  penser à utiliser shift n avec n le nombre de shift à exécuter
