#! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while
# Autor: shortymolinari

echo "Loops Anidados"
# shellcheck disable=SC2045
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $fil _ $nombre"
    done
done