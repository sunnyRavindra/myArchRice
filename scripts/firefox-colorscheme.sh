#!/bin/bash

# Set the path to your generated Pywal colorscheme
colorscheme_path="~/.cache/wal/colors.json"

# Find the Firefox profile folder
profile_folder=$(firefox --version | grep -Po "(?<=Mozilla Firefox, )[^ ]+") # Get the profile folder using Firefox version
profile_folder="${HOME}/.mozilla/firefox/${profile_folder}.default-release"

# Check if the userChrome.css file exists
if [[ -f "${profile_folder}/chrome/userChrome.css" ]]; then
    # Backup the existing userChrome.css file
    cp "${profile_folder}/chrome/userChrome.css" "${profile_folder}/chrome/userChrome.css.bak"
fi

# Extract colors from Pywal colorscheme
background_color=$(jq -r '.colors.background' "${colorscheme_path}")
foreground_color=$(jq -r '.colors.foreground' "${colorscheme_path}")
accent_color=$(jq -r '.colors.color1' "${colorscheme_path}")
link_color=$(jq -r '.colors.color6' "${colorscheme_path}")

# Generate CSS styles based on the colors
css_styles=$(cat <<EOF
/* Background color */
:root {
    --background-color: ${background_color} !important;
}

/* Foreground color */
:root {
    --foreground-color: ${foreground_color} !important;
}

/* Accent color */
:root {
    --accent-color: ${accent_color} !important;
}

/* Link color */
a {
    color: ${link_color} !important;
}
EOF
)

# Write the CSS styles to the userChrome.css file
echo "${css_styles}" > "${profile_folder}/chrome/userChrome.css"

# Display a success message
echo "Firefox color scheme has been updated!"

# Restart Firefox to apply the changes
firefox --new-instance

