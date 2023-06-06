#!/bin/bash

# Pywal colors file path
pywal_file="$HOME/.cache/wal/colors.sh"

# Check if Pywal colors file exists
if [ ! -f "$pywal_file" ]; then
  echo "Pywal colors file not found: $pywal_file"
  exit 1
fi

# Source the Pywal colors file
source "$pywal_file"

# Path to the alacritty.yml file
alacritty_config="$HOME/.config/alacritty/alacritty.yml"

# Update the color values in alacritty.yml
sed -i "s/background: .*/background: \"$background\"/" "$alacritty_config"
sed -i "s/foreground: .*/foreground: \"$foreground\"/" "$alacritty_config"

# Print confirmation message
echo "Alacritty colors updated successfully!"

# Restart Alacritty for the changes to take effect
# You may need to modify this command based on your system setup
# For example, you might use `alacritty` instead of `exec alacritty`
#exec alacritty

