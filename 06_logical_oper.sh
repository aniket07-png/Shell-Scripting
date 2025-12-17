#!/bin/bash

#AND operator with if else statement

read -p "What is your age? " age
read -p "Your country: " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi

#OR operator with if else statement

read -p "What is your age? " age
read -p "Your country: " country

if [[ $age -ge 18 ]] || [[ $country == "India" ]]
then
        echo "You can vote"
else
        echo "You can't vote"
fi

#cond1 && cond2 || cond3

read -p "What is your age? " age

#You can also give conditions with if else statement

[[ $age -ge 18 ]] && echo "You are an Adult" || echo "You are Minor"

