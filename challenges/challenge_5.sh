# !/bin/bash
# Reto 5. Generar un archivo log, escribir dentro de este archivo el usuario, y la fecha de log en formato yyyy_MM_DD_HH_mm_ss
# Autor: Luis Xavier

echo "Generating log file..."
touch log.txt

echo "Registering login..."
user=$USER
date=$(date +%Y_%m_%d__%H:%M:%S)

cat << EOF >> log.txt
Log entered: $date - by: $user
----------------------------------------
The current working directory is: $PWD
You are logged in as $(whoami)
----------------------------------------

EOF

#echo "$user/$date" >> log.txt

sleep 1
echo -e "Login Registered\n"
cat log.txt