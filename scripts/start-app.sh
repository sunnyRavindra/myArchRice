#!/bin/bash

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

sudo -u sunny cp ~/.xinitrc ~/myArchRice/.xinitrc
sudo -u sunny cp ~/.config/picom.conf ~/myArchRice/picom.conf
sudo -u sunny cp ~/.config/alacritty/alacritty.yml ~/myArchRice/alacritty.yml
