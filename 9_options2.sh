#!/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetros

# Autor: shortymolinari

echo "Programa Opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opción enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
    do
        case "$1" in
            -a) echo "-a opción utilizada";;
            -b) echo "-b opción utilizada";;
            -c) echo "-c opción utilizada";;
            *) echo "$! no es una opción";;
        esac
        shift
done


# mostrar las ultimas 10 lineas de un archivo
# donde myFile es un argumento
#tail myFile.txt

# Indicar que se desea ver 20 lineas del mismo archivo
#tail -n 20 myFile.txt ->