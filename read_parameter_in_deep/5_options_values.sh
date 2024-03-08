#!/bin/bash
# Autor: Shorty


while [ -n "$1" ]; do # while loop starts
	case "$1" in
    -a) echo "-a option passed" ;;
    -b)
      param="$2"
      echo "-b option passed, with value $param"
      shift
      ;;
    -c) echo "-c option passed" ;;
    --)
      shift # The double dash makes them parameters
      break
      ;;
    *) echo "Option $1 not recognized" ;;
	esac
	shift
done

total=1

for param in "$@"; do
	echo "#$total: $param"
	total=$((total + 1))
done

# sh 5_options_values.sh -a -b test1 -d
# -a option passed
# -b option passed, with value test1
# Option -d not recognized