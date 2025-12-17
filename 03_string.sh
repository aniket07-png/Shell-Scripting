#!/bin/bash

myVar="Hey Buddy, How are you?"

echo "Length of the string is ${#myVar}"

#How to convert the string in Upper case and Lower case

echo "Upper case ----- ${myVar^^}"
echo "Lower case ----- ${myVar,,}"

#How to replace a word from string

echo "New word is --- ${myVar/Buddy/Abhay}"

#How to slice a string

echo "After slice --- ${myVar:4:10}"

