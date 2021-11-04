#!/bin/bash


# demo boucle for



for monelement in nantes lille toulouse
do
  echo "Ville : $monelement"
done


# utilisation for pour analyser un fichier
for i in $(cat /etc/passwd | cut -d ":" -f 1)
do
  id -u $i
done

# boucle for avec valeur numérique (nnombre de tour de boucle defini)
nbr_tour=10
for (( i=1 ; i<=$nbr_tour ; i++ ))
do
  echo "Traitement : n°$i"
done

