#!/bin/bash

# Path to the wallpaper directory
wallpaper_dir=~/myArchRice/wallpapers/

# Get a random file from the directory
image_file=$(find "$wallpaper_dir" -type f | shuf -n 1)

# Check if a file was found
if [[ -n "$image_file" ]]; then
    echo "Selected random file: $image_file"
    # Run the wal command with the random file
    wal -i "$image_file"
else
    echo "No files found in $wallpaper_dir"
fi

./change-colors-alacritty.sh
