#! /bin/bash
# RETO 2: programa de ingreso de datos personales, validacion e impresion


nombreRegEx='^([A-Z??????a-z??????]{1,}\s?){1,2}$'
apellidoRegEx='^[A-Z??????a-z??????]{1,}\s?[A-Z??????a-z??????]{1,}$'
edadRegex='^[0-9]{2}$'
direccionRegEx='^[A-Z??????a-z??????0-9.,# ]{1,}?$'
telefonoRegEx='^([(0-9]{2,2}[-. ]?)([(0-9]{2,2}[-. ]?)([0-9]{2,2}[-. ]?)([0-9]{2,2}[-. ]?)([(0-9]{2,2}[-. ]?)$'

oldAge=65
youngAge=8

# Solicitamos el Apellido
read -p "Ingrese su apellido:" apellido
while [[ ! $apellido =~ $apellidoRegEx ]]
do
  echo -e "el Apellido no es valido"
  read -p "Ingrese el Apellido (po favo):" apellido
done

# Solicitamos el nombre
read -p "Ingrese su nombre:" nombre
while [[ ! $nombre =~ $nombreRegEx ]]
do
  echo -e "el Nombre no es valido"
  read -p "Ingrese el Nombre (po favo):" nombre
done

# Solicitamos la edad
read -p "Ingrese su edad:" edad
while [[ ! $edad =~ $edadRegEx ]]
do
  echo -e "la edad no es valida"
  read -p "Ingrese su edad (po favo):" edad
done

if [[ $edad -gt $oldAge ]]; then
  echo -e "aprendiendo a programar a su edad! Felicidades!"
fi

if [[ $edad -lt $youngAge ]]; then
  echo -e "Too young!"
fi

# Solicitamos el telefono
read -p "Ingrese su Telefono:" telefono
while [[ ! $telefono =~ $telefonoRegEx ]]
do
  echo -e "el telefono no es valido"
  read -p "Ingrese su telefono (po favo):" telefono
done

# Solicitamos la direccion
read -p "Ingrese su Direccion:" direccion
while [[ ! $direccion =~ $direccionRegEx ]]
do
  echo -e "la direccion no es valida"
  read -p "Ingrese su direccion (po favo):" direccion
done

echo -e ""
echo -e "################"
echo -e " Datos Personales:"
echo -e "################"
echo -e "Apellido: $apellido"
echo -e "Nombre: $nombre"
echo -e "Edad: $edad Telefono: $telefono"
echo -e "Direccion: $direccion"