#! /bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else if, else

# Autor: shortymolinari

classNote=0
edad=0

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cúal es su nota:" classNote
echo -e "\n"

if (( $classNote >= 7 )); then
 echo "El alumno aprueba la materia"
else
 echo "El alumno no aprueba la materia"
fi

read -p "Indique cúal es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi