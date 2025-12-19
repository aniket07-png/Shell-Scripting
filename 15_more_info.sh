#!/bin/bash

<<comment
if [ -d folder name ] : If folder exist
if [ ! -d folder name ] : If folder not exist
if [ -f file name ] : If file exist
if [ ! -f file name ] : If file not exist
comment

read -p "Enter file name: " file

if [[ -f $file ]]
then
	echo "File exist"
else
	echo "File not exist"
	exit 1
fi
