#!/bin/bash

# Presentation boucle while

# Utilisé pour parcourir une liste (fichier)
while read ligne
do
  echo "$ligne"
done < /etc/group



# While sur condition (nombre de parametres saisis)
while [[ "$#" -gt 0 ]]
do
  echo "Parametre : $1"
  echo "Nbre de parametre restant : $#"
  shift
done


# while pour un programme long avec vérification de presence de fichier
flag=while.pid
touch "$flag"
while [[ -f "$flag" ]]
do
  echo "Programme en cours..."
  sleep 2
done

# while en boucle infinie (pas de condition)
while :
do
 echo "Boucle infinie..."
 echo "CTRL+C pour quitter..."
 sleep 2
done


