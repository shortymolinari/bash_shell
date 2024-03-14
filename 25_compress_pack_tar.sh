#! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: shortymolinari

echo "Empaquetar todos los scripts de la carpeta shellCourse"
# c: crear, v: verbose -> ver lo se va empaquetando, f: file
tar -cvf shellCourse.tar *.sh