#!/bin/bash
# Programa para revisar la declaración de variables

option=0
name="shorty"

echo "Opcion: $option y nombre: $name"


#Export the name variable so that it is available in the other processes
export name

#Llamar al siguiente script para recuperar la variable

./3_variables.sh
