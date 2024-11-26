#!/bin/bash

# Solicitar al usuario que ingrese un número
echo -n "Ingrese un número para mostrar su tabla de multiplicar: "
read numero

# Mostrar la tabla de multiplicar
echo "Tabla de multiplicar del $numero:"
for i in {1..10}; do
  resultado=$((numero * i))
  echo "$numero x $i = $resultado"
done
