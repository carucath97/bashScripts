#!/bin/bash

#create a function
even_or_odd() {
#ask for a number
	echo "Enter a number"
	read number
	#check if odd or even - use % operator
	if (( $number % 2 == 0 ))
	then
		echo "The number ${number} is even" | tee file3.txt
	else
		echo "The number ${number} is odd" | tee file3.txt
	fi
}

even_or_odd
echo "do you want to remove file3.txt (Y/N)?"
read decision
if [ $decision == "Y" ] || [ $decision == "y" ]
then
	rm file3.txt
	echo "file has been removed"
elif [ $decision == "N" ] || [ $decision == "n" ]
then
	touch file3.txt
	mv file3.txt changedFileName
	#make sure that the file has the right permission
	chmod 777 changedFileName
	mv changedFileName ~
	echo "file3.txt has been moved to the home directory"
else
	echo "Incorrect input, file is unaffected"
fi



