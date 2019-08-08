#!/bin/bash
declare -a number_list=()
quit=0
while [ $quit -eq 0 ]
do
	echo "Insert number (q to quit)"
	read number
#	echo "${number_list}"
	if [ $number == "q" ]
	then
		quit=1
		echo "No more numbers, here is the input in numeric order:"
		echo "${number_list}"
	else
		number_list+=( $number )
		echo "${number_list}"
	fi
done
