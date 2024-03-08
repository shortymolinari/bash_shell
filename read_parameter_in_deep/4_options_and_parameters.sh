#!/bin/bash
# Autor: Shorty


while [ -n "$1" ]; do # while loop starts
	case "$1" in
    -a) echo "-a option passed" ;; # Message for -a option
    -b) echo "-b option passed" ;; # Message for -b option
    -c) echo "-c option passed" ;; # Message for -c option
    --)
      shift # The double dash which separates options from parameters
      break
      ;; # Exit the loop using break command
    *) echo "Option $1 not recognized" ;;
	esac
	shift
done

total=1

for param in "$@"; do
	echo "#$total: $param"
	total=$((total + 1))
done

#λ sh 3_options_and_parameters.sh -a -b -c -- 5 10 15
#-a option passed
#-b option passed
#-c option passed
# #1: 5
# #2: 10
# #3: 15