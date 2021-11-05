#! /bin/bash

if [ $# = 0 ] ; then
    # `pwd` = $(pwd) => substitution de commande
    cd `pwd` # repertoire courant si non specifie
else
    cd $1    # sinon premier argument
fi


for fichier in *
do
     echo "$fichier" | grep -q " "  # -q : grep n'écrit rien
     if [ $? -eq 0 ]                
     then
       n=`echo $fichier | sed -e "s/ /_/g"` 
       mv "$fichier" "$n"                  
     fi
done   

exit 0
