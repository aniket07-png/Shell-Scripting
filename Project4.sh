#!/bin/bash

#This script takes the package name from user and install it

read -p "Enter the package name:- " Package

echo "Checking if the package is already installed"

if dpkg -s $Package >/dev/null 2>&1
then
	echo "$Package already installed"
	exit 1
else
	echo "Updating system and Installing $Package"
fi

sudo apt-get update
sudo apt install $Package -y

read -p "Enter the service name:- " Service

sudo systemctl start $Service
systemctl status $Service

