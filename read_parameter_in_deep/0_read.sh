#!/bin/bash
# Autor: Shorty


#read -p "Cuál es tu nombre?: " first last
#echo "Hola estimad@ $last, $first…"

#Puede utilizar la opción -t para especificar un tiempo de espera para la entrada en segundos.
if read -t 5 -p "Cuál es tu nombre?: " first last; then
	echo "Hola, $first $last, cómo estas?"
else
	echo "Adiooos!"
fi