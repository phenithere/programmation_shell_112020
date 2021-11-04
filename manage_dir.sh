#!/bin/bash

#Script :
#En utilisant des variables
#set -x

#Variabilise le nom du repertoire : rep=backup new : rep=sauvegarde
#rep=sauvegarde

# Utilisation de l'argument passé au declenchement
#rep=$1

# Utilisation commande read pour demande une saisie utilisateur et la stocker dans variables
read -p "Veuillez saisir un nom de répertoire : " rep

#Création d'un repertoire backup dans la home directory du user qui lance le script (mkdir)
# Utilisation de la variable reserve $0 : nom du script en cours tel qu'il est lancé
# Utilisation de la substitution de commande $(basename $0) pour interpreter le resultat dans echo
echo "Script lancé: $(basename $0)"

echo "Creation du repertoire $HOME/$rep" 
mkdir $HOME/$rep 2>/dev/null  # mise en rebut de la sortie stderr


#Affichage des propriété du répertoire backup (ls -ld rep)
echo "Propriétés :"
ls -ld  $HOME/$rep
#RC=$(($RC + $?))


unset rep

echo "la variable rep est-elle toujours là ?: $rep"
