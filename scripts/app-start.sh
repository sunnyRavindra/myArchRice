#!/bin/bash
    sleep 2 
    xdotool key --clearmodifiers Alt_L+9 &
    sleep 2 
    alacritty -e sh -c "sleep 1 && sh ~/myArchRice/scripts/color-scheme.sh" &
    sleep 2
    alacritty -e sh -c "htop" &
    sleep 2
    xdotool key --clearmodifiers Alt_L+1 &
    sleep 2
    firefox "https://chat.openai.com" &
    sleep 2
    xdotool key --clearmodifiers Alt_L+2 &
    sleep 2
    alacritty &
    sleep 2
    alacritty &
    sleep 2
    firefox "https://chat.openai.com" &
    sleep 2
    xdotool key --clearmodifiers Alt_L+3 &
    sleep 2
    /usr/bin/emacs --daemon
    sh -c "doom run" &
    sleep 2
    xdotool key --clearmodifiers Alt_L+4 &
    sleep 2
    alacritty -e sh -c "sleep 1 && sh ranger" &
    sleep 2
    xdotool key --clearmodifiers Alt_L+9 &
