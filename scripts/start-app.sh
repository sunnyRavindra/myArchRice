#!/bin/bash

yes | pacman -Syu 
yes | pacman -S neovim 
yes | pacman -S base-devel
yes | pacman -S freetype2 
yes | pacman -S libxinerama 
yes | pacman -S libxft
yes | pacman -S libx11 
yes | pacman -S fontconfig 
yes | pacman -S ttf-dejavu
yes | pacman -S alacritty
yes | pacman -S firefox
yes | pacman -S github-cli
yes | pacman -S code
yes | pacman -S picom
yes | pacman -S python-pywal
yes | pacman -S nitrogen
yes | pacman -S feh
yes | pacman -S neofetch
yes | pacman -S unzip
yes | pacman -S x11-xserver-utils 
yes | pacman -S xdotool 
yes | pacman -S wmctrl
cp ./dwm-restart /usr/local/bin
