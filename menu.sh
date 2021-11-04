#!/bin/bash

echo "Gestion Backup / Restore"
echo "backup"
echo "restore"
echo "list"

read -p "Quel est votre choix ? (backup - restore - list) " reponse

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
     ;;
   *)
     echo "mauvais choix"
     ;;
esac
