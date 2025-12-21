#!/bin/bash

#Archive older files or Archive large files

#Requirement :- In the given directory,if you find files more than a given size like 20MB or files older than given days like 10 days.
#Compress those files and move in a 'archive' folder

<<comment
Provide the path of directory
Check if the directory is present or not
Create 'archive' folder if not already present
Find all the files with size more than 20MB
Compress each file
Move the compressed files in 'archive' folder
Make a cronjob to run the script everyday at given time
comment

#$Revision:001$
#$Sun Dec 21 13:03:35 IST 2025

#Variables

Base=/data/data/com.termux/files/home/
Days=10
Depth=1
Run=0

#Check if the directory is present or not

if [ ! -d $Base ]
then
	echo "Directory does not exist : $Base"
	exit 1
fi

#Create 'archive' folder if not present

if [ ! -d $Base/archive ]
then
	mkdir $Base/archive
fi

#Find the list of files larger than 20MB

for i in 'find $Base -maxdepth $Depth -type f -size +20G'
do
	if [ $Run -eq 0 ]
	then
		echo "[$date] archiving $i ==> $Base/archive"
		gzip $i || exit 1
		mv $i.gz $Base/archive || exit 1
	fi
done
