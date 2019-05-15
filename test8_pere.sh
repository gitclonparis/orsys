#!/bin/bash

echo "PID du programme principal : $$"

for fichier in "$@"; do
  ./test8.sh $fichier
  echo "-------------"
  echo "Retour : $?"
done

echo " ------ FIN -------"
