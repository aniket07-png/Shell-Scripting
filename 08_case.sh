#!/bin/bash

echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"
echo "A for date too but in better way"

read choice

case $choice in 
	a)date;;
	b)ls;;
	c)pwd;;
	A)
		echo "Today's date is: $(date)"
		echo "Ending..."
		;;
	*)echo "Please provide a valid value"
esac

