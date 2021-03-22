#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess the number of files and folders in the current directory: "
numberoffiles=$(ls | wc -l)

#Function added only because one is required
function printCongratulations {
	echo "Congratulations! That is the correct answer."
}

read response

iterator=1

while [[ $iterator -eq 1 ]]
do

if [[ $response -eq $numberoffiles ]]
then
	printCongratulations
	iterator=0
elif [[ $response -lt $numberoffiles ]]
then
	echo "Higher! Guess again: "
	read response
else
	echo "Lower! Guess again: "
	read response
fi 

done