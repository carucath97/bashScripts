#!/bin/bash

#get user input for the upper limit
echo "Insert upper limit: "
read limit
for number in $(seq 1 $limit)
do
	if (( $number % 15 == 0 ))
	then
		echo "FizzBuzz"
	elif (( $number % 5 == 0 ))
	then
		echo "Buzz"
	elif (( $number % 3 == 0 ))
	then 
		echo "Fizz"
	else
		echo "${number}"
	fi
done


