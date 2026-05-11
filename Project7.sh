#!/bin/bash

set -euo pipefail

<<task
Takes a source directory and backup destination as arguments
Creates a timestamped .tar.gz archive (e.g., backup-2026-02-08.tar.gz)
Verifies the archive was created successfully
Prints archive name and size
Deletes backups older than 14 days from the destination
Handles errors — exit if source doesn't exist
task

if [[ $# -lt 1 ]]
then
        echo "USAGE:- $0 <source_path> <destination_path>"
        exit 1 #Optional
fi

# Check if source exists
if [[ ! -d "$1" ]]
then
        echo "Directory doesn't exist. $1"
        exit 1
fi

# Ensure destination exists
mkdir -p "$2"

# Create timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE="$2/backup-$TIMESTAMP.tar.gz"

echo "📦 Creating backup..."

# Create archive
tar -czf "$ARCHIVE" -C "$1" . 

# Verify archive
if [[ ! -f "$ARCHIVE" ]]; then
    echo "❌ Backup failed!"
    exit 1
fi

# Get size
SIZE=$(du -h "$ARCHIVE" | cut -f1)

echo "✅ Backup created: $ARCHIVE"
echo "📏 Size: $SIZE"

# Delete backups older than 14 days
echo "🧹 Cleaning old backups..."
DELETED=$(find "$2" -type f -name "backup-*.tar.gz" -mtime +14 | wc -l)

find "$2" -type f -name "backup-*.tar.gz" -mtime +14 -delete

echo "🗑️ Deleted old backups: $DELETED"
