#!/bin/bash
# Programa para ejemplificar el uso de la descarga de información
# desde internet utilizando el comando wget

# Autor: shortymolinari

echo "Descargar información de internet"
wget https://www.php.net/distributions/php-8.3.3.tar.gz

echo "a)img.img"
echo "b)img.iso"
echo "Chose an option: $1"

while [ -n "$1" ]
    do
        case "$1" in
            -a) wget  https://...;;
            -b) wget  https://...;;
            *) echo "$! isn't option";;
        esac
        shift
    done