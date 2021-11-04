#!/bin/bash

set -x
# Script d'analyse et retour de taille de répertoires

# Le script attend un argument en entrée : /rep
# Usage : ./check_size.sh /rep

# Vérifier que le script est bien lance avec un argument
# si pas lancé avec un argument et informer et quitter
#if [ -z "$1" ]
if [ $# -ne 1 ]
then
  echo "Nombre d'arguments passés invalide"
  echo "Usage: $(basename "$0") <repertoire>"
  exit 1  
fi


# verifier que le repertoire donné en argument existe
if [ -d "$1" ]
then
# Boucler avec for sur le repertoire parent afin d'afficher la taille des repertoires presents
# utilisation de la substitution de commande pour alimenter la boucle for (ls)
# du -sh {element}
  for i in "$1"/*
  do
    du -sh "$i"
  done
else
  echo "Le repertoire $1 n'existe pas"
  exit 1
fi
