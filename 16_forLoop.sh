#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Autor: shortymolinari


numberList=(1 2 3 4 5 6)

echo "Iterar en la Lista de Números"
for number in ${numberList[*]}
do
    echo "Número: $number"
done

echo "Iterar en la lista de Cadenas"
for name in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $name"
done

echo "Iterar en Archivos"
for fileBinary in *
do
    echo "Nombre archivo: $fileBinary"
done

echo "Iterar utilizando un comando"
# shellcheck disable=SC2045
for fil in $(ls)
do
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "Número: $i"
done