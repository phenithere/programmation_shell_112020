#!/bin/bash

# Utilisation commande set pour debug
# set -x
# set -xe 

# Ceci est un premier script shell avec interpreteur : bash

# Declaration d'une variable
mavariable="Lancement sauvegarde..."

var2="script"

# Appel de la commande echo pour afficher quelque chose
echo Hello World !

#ls -rien

echo "Suite..."

# Melange texte et variable
echo "Action : $mavariable"

# Concatenation
echo "${mavariable}${var2}"
echo "${var2}ing"

# redeclaration d'une variable existante
var2="FIN"

echo "${var2}"

