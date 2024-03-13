#!/bin/bash

#Crear un menú con las siguientes opciones:
#
#    Procesos Actuales,
#    Memoria Disponible,
#    Espacio en Disco,
#    Información de Red,
#    Variables de Entorno Configuradas,
#    Información Programa
#    Backup información
#    Ingrese una opción.
#
#Posterior a esto vamos  a recuperar la opción ingresada,
# validarla e imprimir la opción y el título de acuerdo a lo ingresado

while :
do
    clear
    echo "_________________________________________"
    echo "            Programa reto #4             "
    echo "_________________________________________"
    echo "              MENÚ PRINCIPAL             "
    echo "_________________________________________"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup información"
    echo "8. Salir"

     #Leer los datos del usuario - capturar información
     read -n1 -p "Ingrese una opción [1-8]:" option

    #Validar la opción ingresada
    case $option in
       1)
          echo -e "\nProcesos Actuales....."
          ps aux
          sleep 10
          ;;
       2)
          echo -e "\nMemoria Disponible....."
          free -h
          sleep 10
         ;;
       3)
          echo -e "\nEspacio en Disco....."
          df -hT
          sleep 10
          ;;
       4)
          echo -e "\nInformación de Red....."
          ping google.com
          sleep 10
          ;;
       5)
          echo -e "\nVariables de Entorno Configuradas....."
          echo "$PATH"
          sleep 10
          ;;
       6)
          echo -e "\nInformación Programa....."
          cat ../1_comments.sh
          sleep 10
          ;;
       7)
          echo -e "\nBackup información....."
          sleep 10
          ;;
       8)
          echo -e "\nSalir del Programa....."
          exit 0
          ;;
    esac
done