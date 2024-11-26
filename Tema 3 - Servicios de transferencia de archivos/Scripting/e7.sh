#!/bin/bash

# Solicitar al usuario el nombre del directorio a comprimir
echo -n "Introduce el nombre del directorio a comprimir: "
read directorio

# Verificar si el directorio existe
if [ -d "$directorio" ]; then
  # Obtener la fecha actual en formato yyyy-mm-dd
  fecha=$(date +"%Y-%m-%d")

  # Crear el nombre del archivo comprimido
  nombre_archivo="${fecha}$(basename "$directorio").tar.gz"

  # Crear el archivo tar.gz
  tar -czf "$nombre_archivo" "$directorio"

  echo "Archivo comprimido creado: $nombre_archivo"
else
  echo "Error: El directorio '$directorio' no existe."
fi
