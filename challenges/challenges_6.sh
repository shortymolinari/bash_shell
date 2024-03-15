#! /bin/bash
# Programa que permite manejar las utilidades de Postres
# Autor: shortymolinari

opcion=0

#While "infinito" se va a ejecuatr hasta que ingresemos una sentencia de salida
while :
do
    #Limpiar la pantalla
    clear
    echo -e "
                    __             ________
    _______   _____/  |_  ____    /  _____/
    \_  __ \_/ __ \   __\/  _ \  /   __  \
     |  | \/\  ___/|  | (  <_> ) \  |__\  \
     |__|    \___  >__|  \____/   \_____  /
                 \/                     \/
    "


    #Desplegar el menú de opciones
    echo "_________________________________________"
    echo "PG-UTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres....."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalar postgres...."
            sleep 3
            ;;
        3)
            echo -e "\nSacar respaldo..."
            sleep 3
            ;;
        4)
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5)
            echo -e "\nSalir del Programa"
            exit 0
            ;;
    esac
done