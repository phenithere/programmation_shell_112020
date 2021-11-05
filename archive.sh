#!/bin/bash

# Le script doit permettre de demande un entier (ex 15) pour rechercher les fichier de plus de 15j par exemple
# => VARIABLE : read ou arguments (vérifier s'il est bien numérique)


# Le script doit permettre de définir un répertoire à analyser
# => VARIABLE : read ou arguments (vérifier s'il existe)

# Le script créé un répertoire backup dans la home du user qui lance le script (ou vérifier s'il existe)
# mkdir

# Le script lance une commande find pour rechercher les éléments de type fichier qui ont pour name un pattern "*.log*" de plus de 15j et les copie dans /backup
# commande find : man find
# find $rep -type f -name "*.log" -mtime $jour -exec cp {} "${HOME}/backup" \;


# Le script créé une archive dans la home du user avec pour nom : log.{date formatée}.tar.gz et pour contenu les fichier du répertoire /backup
# utilisation de la substitution de commande pour mettre un date formatée dans le nom de l'archive
# tar -czf ~/log.$(date +%d%m%Y).tar.gz


## On peut réaliser des fonctions 

#set -x

# Script de recherche et archivage de fichiers 

# Creation du répertoire d'accueil
mkdir -p ${HOME}/backup
backup_dir=${HOME}/backup

jour=15

# Fonction aide
function usage {
  echo "Usage: $(basename $0) [jours] <repertoire>"
  echo " "
  echo "jours: nombre décimal"
  echo "repertoire: chemin absolu"
  echo " "
}

function verif_int {
  if [ ! -z "${1##*[!0-9]*}" ]
  then
    jour=$1
    return 0   
  else
    echo "$1 n'est pas un entier"
    exit 1
  fi
}

function verif_rep {
  if [[ -d $1 ]]
  then
    return 0
  else
    echo "Repertoire $1 inexistant"
    exit 1
  fi
}

function verif_empty_dir {
  if [ -z "$(ls -A $1)" ]; then
   echo "Repertoire vide, pas de log a archive"
   exit 1
  else
   echo "Not Empty"
   return 0
  fi
}


case $# in
  1)
    # && condition ET : si le code retour de la fonction renvoi 0, on passe à la commande find
    verif_rep $1 && find $1 -type f -name "*.log" -mtime $jour -exec cp {} $backup_dir \;
    ;;
  2)
    # ici : \ sert à casser la commande (ligne totale) seulement pour l'affichage dans le code
    verif_int $1 && verif_rep $2 \
    && find $2 -type f -name "*.log" -mtime $jour -exec cp {} $backup_dir \;
    ;;
  *)
    usage
    exit 1
    ;;
esac

read -p "Souhaitez-vous archiver ? y|n " reponse

case $reponse in
  y|Y)
   verif_empty_dir $backup_dir \
   && tar -czf ~/log.$(date +%d%m%Y).tar.gz $backup_dir/
   ;;
  n|N)
   echo "Ok quit"
   exit 0
   ;;
  *)
   echo "Nimp"
   exit 1
   ;;
esac 
