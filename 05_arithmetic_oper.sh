#!/bin/bash

#For mathematical operations we use "Let" command or (())

read -p "Enter first no.: " x
read -p "Enter second no.: " y

#First method

let add=$x+$y
echo "The addition of those two no. is $add"

let mul=$x*$y
echo "The multiplication of those two no. is $mul"

#Second method

echo "The substraction of those two no. is $(($x-$y))"
#echo "The division of those two no. is $(($x/$y))"

#The above division does not work properly it only show 0

echo "The division of those two no. is $(echo "scale=2;$x/$y"|bc)"
