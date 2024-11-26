#!/bin/bash

# Solicitar el nombre del archivo
echo -n "Introduce el nombre del archivo: "
read archivo

# Verificar si el archivo existe y es un archivo común
if [ -f "$archivo" ]; then
  echo "El archivo '$archivo' existe y es un archivo común."

  # Cambiar permisos a ejecutable para el dueño y el grupo
  chmod ug+x "$archivo"

  # Mostrar los permisos nuevos del archivo
  echo "Permisos nuevos del archivo:"
  ls -l "$archivo"
else
  echo "Error: '$archivo' no existe o no es un archivo común."
fi
