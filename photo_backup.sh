#!/bin/bash

# Variables
SOURCE="/mnt/InternalSSD/"
DESTINATION="/mnt/InternalHDD/Photos/"

# rsync options
OPTIONS="-av --delete"

# Execute rsync command
rsync $OPTIONS "$SOURCE" "$DESTINATION"

# Exit status
if [ $? -eq 0 ]; then
    echo "Sync completed successfully."
else
    echo "Sync encountered errors."
fi

