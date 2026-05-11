#!/bin/bash

set -euo pipefail

<<task
Takes a log directory as an argument (e.g., /var/log/myapp)
Compresses .log files older than 7 days using gzip
Deletes .gz files older than 30 days
Prints how many files were compressed and deleted
Exits with an error if the directory doesn't exist
task

if [[ $# -lt 1 ]]
then
        echo "USAGE:- $0 <log_directory_path>"
        exit 1 #Optional
fi

if [[ ! -d "$1" ]]
then
        echo "Directory doesn't exist. $1"
        exit 1
fi

echo "🔄 Processing logs in: $1"

#Count .log files older than 7 days
compress_count=$(find "$1" -type f -name *.log -mtime +7 | wc -l)

# Compress .log files older than 7 days
find "$1" -type f -name "*.log" -mtime +7 -exec gzip {} \;

# Count .gz files older than 30 days
delete_count=$(find "$1" -type f -name "*.gz" -mtime +30 | wc -l)

# Delete .gz files older than 30 days
find "$1" -type f -name "*.gz" -mtime +30 -delete

echo "✅ Compressed files: $compress_count"
echo "🗑️  Deleted files: $delete_count"
