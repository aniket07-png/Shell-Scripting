#!/bin/bash

#To make function with Arguments - 1st method 

function WelcomeNote {
	echo "-------------"
	echo "Welcome $1"
	echo "Age is $2"
	echo "-------------"
}

#To make function with Arguments - 2nd method

welcome () {
	echo "Second method"
}

#To call the function

welcome
welcome
WelcomeNote
WelcomeNote

#Calling function with Arguments

WelcomeNote Aniket 20
WelcomeNote Abhay 15

