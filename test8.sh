#!/bin/bash

echo "PID du Lecteur de fichier : $$"

# dossier_1="/root/bin/"

# read -p "Entrez un nom de fichier : " fichier

fichier="$1"

# test_existence="$dossier_1$fichier"
# echo "$test_existence"
# echo "$fichier"

if [ -f $fichier ]; then

  echo "Le fichier existe"

  nligne=$(wc -l <$fichier)
  echo "le fichier possède $nligne lignes"
 
  i=1
  for line in $(cat $fichier); 
    do 
      echo "ligne $i : $line" 
      let i=$i+1 
  done

  exit 0

else

  echo "Fichier absent"

  exit 1
fi
