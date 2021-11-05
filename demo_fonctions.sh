#!/bin/bash

# Script demo fonctions

# Variable globale (interprete par le script et les fichier inclus)
verbose=true

#-------------------------
# Librairie de fonction
#-------------------------
# Inclure un fichier de fonction externe
. demo_include_fonctions.sh

# MAIN
# Appel a une fonction externe
log "Database boby sauvegardée"
log "Tranfert dump ok" 




envoi_ftp pierre $password monftp.formation.lan
