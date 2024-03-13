#!/bin/bash

echo "Elija 1 pregunta e intente responderla correctamente!"
echo "1) Pregunta de Geografia"
echo "2) Pregunta de Historia"
echo "3) Pregunta de Ciencias"
echo "4) Pregunta de Política"
echo "5) Pregunta de Informática"
echo -e ""
read -n1 -p "Escriba el número del tipo de pregunta (1-5) :=> " option

echo -e ""

case $option in
    1) read -p "¿Cuál es la capital de Nueva Zelanda? " answerCapital
        if [ $answerCapital = "Wellington" ]; then
                echo "Excelente! Respuesta correcta!"
        else
                echo "Lo siento, $answerCapital no es la Capital de Nueva Zelanda!"
        fi
     ;;
    2) read -p "¿Cuántos años duró la guerra de los 100 años? " answerGuerra
        if [ $answerGuerra -eq 116 ]; then
                echo "Excelente! Respuesta correcta!"
        else
                echo "Lo siento, la Guerra de los 100 años no duró $answerGuerra años!"
        fi
    ;;
    3) read -p "¿Cuánto dura la luz del sol en llegar a la tierra?[minutos] " answerLuzSol
        if [ $answerLuzSol -eq 8 ]; then
                echo "Excelente! Respuesta correcta!"
        else
                echo "Lo siento, la luz del sol no llega a la tierra en $answerLuzSol minutos!"
        fi
    ;;
    4) read -p "¿Cómo se llama el primer presidente de Nicaragua? " answerPresidente
        if [ "$answerPresidente" = "Emiliano Chamorro" ]; then
                echo "Excelente! Respuesta correcta!"
        else
                echo "Lo siento, "$answerPresidente" no fue el primer presidente de Nicaragua!"
        fi
    ;;
    5) read -p "¿Cuántos bits hay en un Kilobyte? " answerKilo
        if [ $answerKilo -eq 8192 ]; then
                echo "Excelente! Respuesta correcta!"
        else
            if [ $answerKilo -gt 8192 ]; then
                    echo "Lo siento, un Kilobyte es un poco menos que $answerKilo bits!"
            else
                    echo "Lo siento, un Kilobyte es un poco más que $answerKilo bits!"
            fi
        fi
    ;;
esac