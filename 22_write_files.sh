#! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: shortymolinari

# sh 22_write_files.sh newfile.txt 'Hola mundo!'

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

printf "Hello, I'm %s.\n" $USER > $1

#Adición multilínea
cat << EOF >> $1
The current working directory is: $PWD
You are logged in as $(whoami)
EOF

cat << EOM >> $1
$2
EOM

date +"Year: %Y, Month: %m, Day: %d" > $1