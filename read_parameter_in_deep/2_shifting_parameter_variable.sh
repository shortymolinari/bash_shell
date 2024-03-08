#!/bin/bash
# Shifting parameter variable
#   The shift command moves every parameter variable to the left:
#   variable $3 ==> variable $2.
#   variable $2 ==> variable $1.
#   variable $1 ==> dropped.
#   variable $0 ==> (the script name) as it is.
#   You can use the shift command to iterate over parameters like this:
# Autor: Shorty

total=1
while [ -n "$1" ]; do # while loop starts
	echo "#$total = $1"
	total=$(($total + 1))
	shift
done

#we have a while loop checking $1 length.
#If $1 becomes zero, the loop stops.
#And the shift command is shifting all passed parameters to the left.