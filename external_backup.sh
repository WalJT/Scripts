#!/bin/bash

set -e

# Source directory
src_dir="/mnt/InternalHDD/"

# Destination directories
dest_dir1="/media/jules/BD1/Backup"
dest_dir2="/media/jules/BD2/Backup"
dest_dir3="/media/jules/BD3/Backup"
dest_dir4="/media/jules/BD4/Backup"

# Function to perform the rsync backup
backup() {
    local src="$1"
    local dest="$2"

    rsync -avH --delete --progress "$src" "$dest"
}

# Create backup directories if they don't exist
mkdir -p "$dest_dir1" "$dest_dir2" "$dest_dir3" "$dest_dir4"

backup "$src_dir" "$dest_dir1"
backup "$src_dir" "$dest_dir2"
backup "$src_dir" "$dest_dir3"
backup "$src_dir" "$dest_dir4"
