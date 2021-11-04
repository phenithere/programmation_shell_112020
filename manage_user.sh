#!/bin/bash


# Script de management des users

log_file=$(basename $0).log

# Verification du user utilisé pour lancer le programme
# Si le user n'est pas root => informer et quitter
# utiliser la variable UID
if [[ $UID -ne 0 ]]
then
  echo "Vous n'êtes pas root, veuillez exécuter ce script en tant que root"
  exit 1
fi

# Demander le nom du user et stocker dans une variable
# Vérifier si le user existe deja
# Si le user existe deja on informe et on quitte
# test user : id
read -p "Veuillez saisir un nom d'utilisateur à créer : " new_user

if id $new_user >/dev/null 2>&1; then
  echo "User $new_user déjà présent"
  exit 1
else 
  # Demander le mot de passe et le stocker dans une variable
  # postitionner le mot de passe
  read -sp "OK, quel mot de passe pour $new_user ? : " mdp_user
  # Creation du user avec son mot de passe
  # useradd
  # option -p : crypté
  # $(echo password | openssl passwd -1 -stdin)
  useradd -m -s /bin/bash -p $(echo $mdp_user | openssl passwd -1 -stdin) $new_user 2>$log_file
  [ $? -eq 0 ] && echo -e "\nUser $new_user est ajouté au système" || echo -e "\nEchec de creation du user, erreur dans $log_file"
fi
