#!/bin/bash

#Suppose we only need to print odd no.

for i in {1..10}
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "Odd no. is $i"
done

#Sleep - To create delay between two executions
#echo $? - To check if the previous command works or not

