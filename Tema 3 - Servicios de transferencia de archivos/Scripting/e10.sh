#!/bin/bash

# Comprobar que se han introducido dos parámetros
if [ "$#" -ne 2 ]; then
  echo "Uso correcto: $0 <nombre_archivo_enlaces> <nombre_archivo_directorios>"
  exit 1
fi

# Asignar los parámetros a variables para mayor claridad
archivo_enlaces=$1
archivo_directorios=$2

# Crear el archivo para los enlaces simbólicos en la carpeta /
echo "Guardando enlaces simbólicos en: $archivo_enlaces"
find / -maxdepth 1 -type l > "$archivo_enlaces" 2>/dev/null

# Crear el archivo para los directorios en la carpeta /
echo "Guardando directorios en: $archivo_directorios"
find / -maxdepth 1 -type d > "$archivo_directorios" 2>/dev/null

echo "Archivos creados exitosamente."
