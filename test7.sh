#!/bin/bash

comparaison ()
{
  if [ $1 -eq $2 ]; then
    echo "egal"
  elif [ $1 -ge $2 ]; then
    echo "x plus grand ou egal"
  else
    echo "x plus petit"
  fi
}

comparaison 1 2
comparaison 4 3
