#! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: shortymolinari

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse2.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse2.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh