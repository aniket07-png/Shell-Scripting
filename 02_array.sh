#!/bin/bash

<<comment
Array is kind of list which store multiple values 
and you can access it using indexing
comment

MyArray=(7 57.2 Hello "How are you?")

echo "Value in 2nd index is ${MyArray[2]}"
echo "All the value in array is ${MyArray[*]}"

#How to find the length

echo "The length of MyArray is ${#MyArray[*]}"

#How to find the specific no. of value from given index

echo "The value from 1 to 2 is ${MyArray[*]:1:2}"

#How to add new values

MyArray+=( "I am under the water" "Here too much raining" 100 )

echo "All the value in array is ${MyArray[*]}"

#How to store the key values pair (just like Dictionary)

declare -A Myarray

Myarray+=([name]=Aniket [age]=20 [city]=Kanpur)

echo "My name is ${Myarray[name]}"
echo "My age is ${Myarray[age]}"
echo "And the city is ${Myarray[city]}"

