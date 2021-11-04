#!/bin/bash

# Script demo utilisation case

echo "start - demarrer"
echo "stop"
echo "status"
echo "yes"

read -p "Quel est votre choix ? : " reponse

# appel case pour analyse la variable reponse et orienter le code
case $reponse in
  start|Start|START)
    echo "Starting..."
    ;;
  stop|Stop)
    echo "Stopping..."
    ;;
  status)
    echo "Status apps"
    ;;
  [yY]es|[yY])
    echo "YES !"
    ;;
  *)
    echo "Option invalide"
    exit 1
    ;;
esac


echo "Suite programme"
  
