# ! /bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Shorty

courseName=$1
courseSchedule=$2

echo "El nombre del curso es: $courseName dictado en el horario de $courseSchedule"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"
