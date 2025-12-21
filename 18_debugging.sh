#!/bin/bash

#If you can enable the debugging of the script using below in the script
set -x

#If you want to exit your script when a command fail
set -e

#To run script in background we use $nohup command on terminal
nohup ./script.sh &

