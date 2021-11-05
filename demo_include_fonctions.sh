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
