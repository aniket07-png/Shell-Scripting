#!/bin/bash

for i in {1..7}
do
	echo "No. is $i"
done

#Getting values from a file names.txt

File="/data/data/com.termux/files/home/shell_scripting/names.txt"

for name in $(cat $File)
do
	echo "Name is $name"
done

#Getting values from Array

MyArray=(7 "Hey there!" Aniket)
len=${#MyArray[*]}

for (( i=0;i<$len;i++ ))
do
	echo "Value of array is ${MyArray[$i]}"
done

