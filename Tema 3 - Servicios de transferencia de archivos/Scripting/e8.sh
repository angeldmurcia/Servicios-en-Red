#!/bin/bash

# Solicitar al usuario que ingrese un número
echo -n "Introduce un número para mostrar su tabla de multiplicar invertida: "
read numero

# Mostrar la tabla de multiplicar invertida
echo "Tabla de multiplicar invertida del $numero:"
for i in {10..1}; do
  resultado=$((numero * i))
  echo "$i x $numero = $resultado"
done
