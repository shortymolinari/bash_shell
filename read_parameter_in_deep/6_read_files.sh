#!/bin/bash

# El comando read puede leer archivos una línea en cada llamada.
# Ahora, si desea obtener todos los datos del archivo,
# puede obtener el contenido usando el comando cat
#y luego enviarlo al comando de lectura usando un bucle while

# Autor: Shorty


count=1
# Get file content then pass to read command by iterating over lines using while command
cat ./read-file.txt | while read line; do
	echo "#$count: $line"
	count=$(($count + 1))
done
echo "Finished"

#while read line; do
#	echo $line
#done < ./read-file.txt

