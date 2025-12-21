#!/bin/bash

#For scheduling only one time,use $AT command on terminal

at <time>
<your command or script>
ctrl+d

<<comment
atq : To check scheduled job
atrm <id> : To remove the schedule
crontab -l : To check the existing jobs
crontab -e : To add new job
Use crontab guru for better understanding about *****
comment

syntax:- ***** cd <path> && ./script.sh
