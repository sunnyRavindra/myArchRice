#!/bin/bash

wal -i $(find ~/myArchRice/wallpapers -type f | shuf -n 1)

source ~/.cache/wal/colors.sh

sed -i "s/background: .*/background: \"$background\"/" ~/.config/alacritty/alacritty.yml
sed -i "s/foreground: .*/foreground: \"$foreground\"/" ~/.config/alacritty/alacritty.yml
sed -i "s/cursor: .*/cursor: \"$cursor\"/" ~/.config/alacritty/alacritty.yml
