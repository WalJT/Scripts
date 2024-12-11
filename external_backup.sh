#!/bin/bash

set -e

# Source directory
src_dir="/var/mnt/InternalHDD"

# Destination directories
dest_dir1="/run/media/jules/BD1/Backup"
dest_dir2="/run/media/jules/BD2/Backup"

# Folders to back up
folders=("Music" "Music (Archived)" "Photos")

# Function to perform the rsync backup
backup() {
    local src="$1"
    local dest="$2"

    rsync -avH --delete --progress "$src" "$dest"
}

# Create backup directories if they don't exist
mkdir -p "$dest_dir1" "$dest_dir2"

# Loop through each folder and back it up to both drives
for folder in "${folders[@]}"; do
    src_folder="$src_dir/$folder"
    backup "$src_folder" "$dest_dir1/$folder"
    backup "$src_folder" "$dest_dir2/$folder"
done

sync