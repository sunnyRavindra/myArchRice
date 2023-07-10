#!/bin/bash

    cp ~/.xinitrc ~/myArchRice/dotfiles/ &
    cp ~/.zshrc ~/myArchRice/dotfiles/ &
    cp ~/.Xresources ~/myArchRice/dotfiles/ &
    cp ~/.config/picom.conf ~/myArchRice/dotfiles/ &
    cp ~/.config/alacritty/alacritty.yml ~/myArchRice/dotfiles/ &
    cp -R ~/.config/doom ~/myArchRice/dotfiles/ &
    cp -R ~/.config/nvim ~/myArchRice/dotfiles/ &

    sleep 2 
    xdotool key --clearmodifiers Alt_L+9 &
    sleep 2 
    alacritty -e sh -c "sleep 1 && sh ~/code/myArchRice/scripts/color-scheme.sh" &
    sleep 2
    alacritty -e sh -c "bpytop" &
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
    alacritty -e zsh -c "doom run"   
    sleep 2
    xdotool key --clearmodifiers Alt_L+4 &
    sleep 2
    alacritty -e zsh -c "obsidian"  
    sleep 2
    xdotool key --clearmodifiers Alt_L+9 &
