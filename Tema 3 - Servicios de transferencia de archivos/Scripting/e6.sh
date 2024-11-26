#!/bin/bash

# Función para verificar la existencia del fichero
existe() {
  # Verifica si el fichero existe
  if [ -e "$1" ]; then
    echo "El fichero '$1' existe."

    # Cambia los permisos a ejecutable solo para el dueño
    chmod u+x,go-x "$1"
    echo "Permisos cambiados: ahora es ejecutable solo para el dueño."
  else
    echo "El fichero '$1' no existe."
  fi
}

# Ejemplo de uso de la función
echo -n "Introduce el nombre del fichero: "
read fichero
existe "$fichero"
