#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario
# utilizando el comando read y validarla

# Autor: shortymolinari

option=0
backupName=""
password=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un carácter
read -n1 -p "Ingresar una opción:" option
echo  "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo  "\n"
echo "Opción:$option , backupName:$backupName"
read -s -p "Ingresar la clave: " password
echo "password: $password"