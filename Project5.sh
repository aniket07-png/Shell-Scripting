#!/bin/bash

<<Usage
Create functions for system information
-RAM usage
-Storage usage
-Top processes
Usage

check_memory () {
	free -h | awk 'NR==2 {print $7}'
}

check_storage () {
	df -h | grep "/dev/fuse" | awk '{print $4}'
}

check_most_mem_consuming_process () {
	ps aux --sort=%mem | awk 'NR==2 {print $1,$2,$4}'
}

echo "========== SYSTEM DETAILS =========="
echo "Available Memory"
check_memory
echo "Available Storage"
check_storage
echo "Most Memory Intensive Process"
check_most_mem_consuming_process 
