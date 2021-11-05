#!/bin/bash


# Declaration de fonctions


function getDate {
  date '+%d%m%Y'
}


function log {
  # Declaration d'un variable locale (interne a ma fonction)
  local message=$@
  if [[ $verbose = true ]]
  then
    getDate | tee -a fonction.log
    echo "$message" | tee -a fonction.log
    return 0
  else
    getDate >> fonction.log
    echo "$message" >> fonction.log
    return 0
  fi
}


function envoi_ftp {

  host=$1
  user=$2
  pass=$3
 
  echo "ftp $user:$pass@$host"
}

