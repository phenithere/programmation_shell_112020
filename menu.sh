#!/bin/bash


# Boucle while pour persiter le script et donc le menu
# while :
i=0
while [[ $i -ne 1 ]]
do

#clear
echo "Gestion Backup / Restore"
echo "backup"
echo "restore"
echo "list"
echo "test"
echo "quit"

read -p "Quel est votre choix ? (backup - restore - list - test - quit) " reponse

clear

case $reponse in
   backup)
     echo "Backup en cours"
     sleep 3
     ;;
   restore)
     echo "restore en cours"
     sleep 3
     ;;
   list)
     echo "Voici le liste des backup"
     # break : Sortie de la boucle mais du script 
     break
     ;;
   test)
     echo "test et sortie boucle"
     ((i++))
     ;;
   quit)
     echo "Ok sortie du programme"
     # exit : fin du script avec choix de code retour
     exit 0
     ;;
   *)
     echo "mauvais choix"
     ;;
esac
done


echo "Fin du menu, mais suite du programme"
echo "envoi de mail de la liste"
