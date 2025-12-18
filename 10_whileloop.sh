#!/bin/bash

#While loop

count=0
num=10

while [[ $count -le $num ]]
do
	echo "Value of count var is $count"
	let count++
done

#Getting values from a file using while loop

while read myvar
do
	echo "Value from file is $myvar"
done < names.txt

#Getting values from CSV file

while IFS="," read id name age
do
	echo "Id is $id"
	echo "Name is $name"
	echo "Age is $age"
done < test.csv

#How to avoid 1st line

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Id is $id"
	echo "Name is $name"
	#echo "Age is $age"
done


