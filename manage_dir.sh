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


# Réaliser un test pour vérifier si le repertoire saisie existe/n'existe pas
# Combiné à l'instruction if/else/fi
# dans le cas ou le répertoire existe deja : on informe et on quitte avec exit
# dans le cas ou le répertoire n'existe pas : on cree le repertoire

if [ ! -d $HOME/$rep ]
then
  echo "Creation du repertoire $HOME/$rep" 
  mkdir $HOME/$rep 2>/dev/null  # mise en rebut de la sortie stderr
  #Affichage des propriété du répertoire backup (ls -ld rep)
  echo "Propriétés :"
  ls -ld  $HOME/$rep
  #RC=$(($RC + $?))
else
  echo "Le répertoire existe déjà"
  exit 2
fi


#unset rep

#echo "la variable rep est-elle toujours là ?: $rep"

echo "Fin du programme"
