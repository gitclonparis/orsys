#!/bin/bash

x=10
while [ $x -ge 0 ]; do
  read -p "Entrer une valeur : " x
  echo "Valeur : $x"
done

LIMITE=5
for ((a=1, b=1; a <= LIMITE ; a++, b++))  # La virgule chaîne les opérations.
do
  echo -n "$a-$b "
done
