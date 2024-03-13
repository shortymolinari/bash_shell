#! /bin/bash

read -p "Ingrese su nombre: " nombre

echo -e "\n Bienvenido $nombre \n"
echo "+++++++++++++++++++++++++++++++"
echo " Reto al conocimiento"
echo -e "+++++++++++++++++++++++++++++++\n"

echo "1.- Matematica"
echo "2.- Deportes"
echo "3.- Historia"
echo "4.- Arte"
echo "5.- Geografia"
echo -e "\n++++++++++++++++++++++++++++++++\n"                                                          
read -n1 -p "Ingrese su opcion: " opcion                                                                
echo -e "\n"                                                                                                                                                                                                    
case $opcion in
    1) read -p " ¿Cual es la raiz cuadrada de 16? " respmat                                                         
        if [ $respmat = "4" ]; then                                                                                 
            echo "Correcto, la raiz cuadrada de 16 es 4"                                                        
        else                                                                                                        
            echo "Respuesta incorrecta, la raiz cuadrada de 16 no es $respmat"                                  
        fi;;  
                                                                                                                                                                                                    
    2) read -p " ¿Que organismo que gobierna las federaciones de fútbol en todo el mundo? " respdep                 
        if [ $respdep = "fifa" ] || [ $respdep = "FIFA" ] || [ $respdep = "Fifa" ] ; then                           
            echo "Correcto, la FIFA"                                                                            
        else                                                                                                        
            echo "Respuesta incorrecta, no es $respdep"                                                         
        fi;;
    3) read -p " ¿Cual es el apellido del Libertador de América? " resphis                                          
        if [ $resphis = "Bolivar" ] || [ $resphis = "BOLIVAR" ] || [ $resphis = "bolivar" ]; then                       
            echo "Correcto, el Libertador de América es Simón Bolivar"                                          
        else                                                                                                        
         echo "Respuesta incorrecta, el apellido del Libertador no es $resphis"                              
        fi;;        
    4) read -p " ¿En qué año nació el Pintor Italiano Leonardo da Vinci? " respart
        if [ $respart = "1452" ]; then
            echo "Correcto, Leonardo da Vinci nació en el 1452 y murió en el año 1519"
        else
            echo "Respuesta incorrecta, Leonardo da Vinci no nacio en el año $respart"
        fi;;
    5) read -p " ¿Cual es la capital de Austria? " respgeo
        if [ $respgeo = "Viena" ] || [ $respgeo = "VIENA" ] || [ $respgeo = "viena" ]; then
            echo "Correcto, la capital de Austria es Viena"
        else
            echo "Respuesta incorrecta, $respgeo no es la capital de Austria"
        fi;;
 esac     