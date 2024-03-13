#! /bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: shortymolinari

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
#Ejecutar un comando y guardar el resultado en una variable `` ó $()
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\nLeer archivos línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1