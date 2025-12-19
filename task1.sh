#!/bin/bash

#To check if the site is work properly or not

read -p "Which site you want to check: " site
ping -c 1 $site &> /dev/null

if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "Failed to connect $site"
fi

<<comment
basename : strip directory info and only give filename
dirname : strip the filename and gives directory path
realpath : gives you full path for a file 
echo "The name of the script is : ${0}"

command > file.txt
command >> file.txt

Single > is use to add content of command in file but if you use again then the previous command output replace by new command

Double >> is use to add content of commands and this will add the new command output after previous one

/dev/null : In case if you don't wanna print the output of a coomand on terminal or write in a file
comment
