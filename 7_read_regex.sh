#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario
# utilizando el comando read y validando los datos con expresiones regulares
# y condicional if

# Autor: shortymolinari

identificationRegex='^[0-9]{10}$'
countryRegex='^EC|COL|US$'
birthdateRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])$'


echo "Regular expressions"
read -p "Enter a identification: " identification
read -p "Enter a country's initials [EC, COL, US]: " country
read -p "Enter your birthdate [yyyyMMDD]: " birthdate

if [[ $identification =~ $identificationRegex ]]; then
    echo "Valid identification: $identification"
else
    echo "Invalid identification: $identification"
fi

if [[ $country =~ $countryRegex ]]; then
    echo "Valid country: $country"
else
    echo "Invalid country: $country"
fi

if [[ $birthdate =~ $birthdateRegex ]]; then
    echo "Valid birthdate: $birthdate"
else
    echo "Invalid birthdate: $birthdate"
fi