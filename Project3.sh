#!/bin/bash

set -x
#Script should be execute with sudo/root access

if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root privilege"
	exit 1
fi

#User should provide atleast one argument as username else guide him/her

if [[ "${#}" -lt 1 ]]
then
	echo "Usage:- ${0} Username [Comment...]"
	echo "Create a user with name Username and comments"
	exit 1
fi

#Store 1st argument as Username

Username="${1}"
echo "Username:- $Username"

#In case of more than one argument,store it as account comment

shift
Comment="${@}"

#Create a password

Password=$(date +%s%N)
echo "$Password"

#Create the user 

useradd -c "$Comment" -m $Username

#Check if user is successfully created or not

if [[ $? -ne 0 ]]
then
	echo "The account could not be created"
	exit 1
fi

#Set the password for the user

echo $Password | passwd --stdin $Username

#Check if password is successfully set or not

if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

#Force password change on first login

passwd -e $Username

#Display the username,password and the host where the user was created

echo
echo "Username:- $Username"
echo
echo "Password:- $password"
echo
echo"Hostname:- $(hostname)

