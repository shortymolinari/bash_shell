#!/bin/bash
# Programa para revisar en profundidad la lectura párametros
# Autor: Shorty

# if [ -n "$1" ]; then # If first parameter passed then print Hi
# 	echo Hi $1.
# else
# 	echo "No parameters found. "
# fi

echo $0 # Script name
echo $1 # 1st parameter
echo $2 # 2nd parameter
echo $3 # 3rd parameter
echo "-------------------------------------------------------"

total=$(( $1 + $2 ))
echo First passed parameter is $1.
echo Second passed parameter is $2.
echo Last passed parameter is ${!#}
echo Total is $total.
echo "-------------------------------------------------------"
echo "The first variable \$* method: $*"
echo "-------------------------------------------------------"
echo "The second variable \$@ method: $@"

total=1
for var in "$*"; do
	echo "\$* =======> #$total = $var"
	total=$(($total + 1))
done
total=1
for var in "$@"; do
	echo "\$@ =======> #$total = $var"
	total=$(($total + 1))
done
echo "-------------------------------------------------------"