#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario
# utilizando el comando read
# Autor: shortymolinari

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingrese su nombre completo" first last
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName

echo "estimad@: $first $last"
echo "Opción:$option , backupName:$backupName"
