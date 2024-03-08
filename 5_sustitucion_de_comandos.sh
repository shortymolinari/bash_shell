# ! /bin/bash
# Como ejecutar comandos dentro de un programa y 
# almacenar su salida en una variable para su posterior uso
# Autor: Shorty

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"