#!/bin/bash

#2 numeros y diga cual es mayor
if [ $1 -ge $2 ];
then
  echo $1
elif [ $1 -eq $2 ];
then
  echo son iguales
else
  echo $2
fi
