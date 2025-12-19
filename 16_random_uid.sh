#!/bin/bash

#RANDOM: A random integer between 0 to 32767 is generated

#Getting a random no. between 1 to 6 (like a dice)

NO=$(($RANDOM%6 + 1))
echo "No. is $NO"

#Checking if the user is root or not

if [[ $UID -eq 0 ]]
then
	echo "User is root"
else
	echo "User is not root"
fi

