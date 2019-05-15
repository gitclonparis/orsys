#!/bin/bash

x=1
y=2
if [ $x -eq $y ]; then
  echo "egal"
elif [ $x -ge $y ]; then
  echo "x plus grand ou egal"
else
  echo "x plus petit"
fi
