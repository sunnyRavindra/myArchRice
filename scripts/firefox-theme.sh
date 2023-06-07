#!/bin/bash

# Step 1: Install necessary packages
# Ensure Firefox, Pywal, ColorZilla, and Stylus are installed on the system

# Step 2: Generate a Pywal color scheme
# Replace '/path/to/your/image.jpg' with the path to your desired wallpaper or image
pywal /path/to/your/image.jpg

# Step 3: Export Pywal colors to a CSS file
# Replace 'base16-gruvbox-hard' with the appropriate color scheme you generated
wal --theme base16-gruvbox-hard -i /path/to/your/image.jpg -o ~/.mozilla/firefox/<your-profile-folder>/chrome/colors.css

# Step 4: Configure Firefox with userChrome.css
firefox_config=~/.mozilla/firefox/<your-profile-folder>/prefs.js

# Enable custom CSS styling
echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "$firefox_config"

# Create the chrome directory and move the colors.css file
chrome_dir=~/.mozilla/firefox/<your-profile-folder>/chrome
mkdir -p "$chrome_dir"
mv ~/.mozilla/firefox/<your-profile-folder>/chrome/colors.css "$chrome_dir"

# Create or modify the userChrome.css file
userchrome_file="$chrome_dir/userChrome.css"
echo '@import url("colors.css");' > "$userchrome_file"

# Step 5: Customize Firefox appearance using ColorZilla and Stylus
firefox -P <your-profile-folder> & disown

# Step 6: Restart Firefox
firefox -P <your-profile-folder> & disown

