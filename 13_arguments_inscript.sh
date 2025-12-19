#!/bin/bash

#To get no. of arguments : $#
#To display all arguments : $@
#To use or display a arguments : $1 $2 and so on

#To create a user provide username and description
#To check any argument is given or not and also use of exit command

if [[ $# -eq 0 ]]
then
	echo "Please provide atleast one argument"
	exit
fi

echo "Creating user"
echo "Username is $1"
echo "Description is $2"

#If you have many words in 2nd argument you can use shift command or " "

shift
echo "Description is $@"
echo "No. of arguments are - $#"

#For loop to access the values from arguments

for filename in $@
do
	echo "Copying file - $filename"
done

