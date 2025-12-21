#!/bin/bash

#Monitoring free RAM space
<<comment
free -h : To check RAM usage
free -mt : Gives you RAM usage in better way
free -mt | grep "Total" : Gives you 'Total' line
free -mt | grep "Total" | awk '{print $4}' : Gives you 4th column data
comment

Free_Space=$(free -mt | grep "Total" | awk '{print $4}')
TH=3500

if [[ $Free_Space -lt $TH ]]
then
	echo "WARNING: RAM is running low"
else
	echo "RAM space is sufficient - $Free_Space M"
fi
