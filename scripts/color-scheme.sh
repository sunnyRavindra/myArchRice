#!usr/bin/zsh
while true; do
wal -i $(find ~/code/myArchRice/wallpapers -type f | shuf -n 1)

source ~/.cache/wal/colors.sh

sed -i "s/background: .*/background: \"$background\"/" ~/.config/alacritty/alacritty.yml
sed -i "s/foreground: .*/foreground: \"$foreground\"/" ~/.config/alacritty/alacritty.yml
sed -i "s/cursor: .*/cursor: \"$cursor\"/" ~/.config/alacritty/alacritty.yml

sed -i "s/dwm.normfgcolor:.*/dwm.normfgcolor:$color9/" ~/.Xresources
sed -i "s/dwm.selfgcolor:.*/dwm.selfgcolor:$color9/" ~/.Xresources

sed -i "s/dwm.normbgcolor:.*/dwm.normbgcolor:$color0/" ~/.Xresources
sed -i "s/dwm.selbgcolor:.*/dwm.selbgcolor:$color0/" ~/.Xresources

sed -i "s/dwm.selbordercolor:.*/dwm.selbordercolor:$olor2/" ~/.Xresources
sed -i "s/dwm.normbordercolor:.*/dwm.normbordercolor:$color3/" ~/.Xresources

xrdb ~/.Xresources
xrdb -merge ~/.Xresources

xdotool key --clearmodifiers Alt_L+F5 &

Batarry=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | sed 's/percentage://' | sed 's/             //')
BatarryStatus=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep state | sed 's/state://' | sed 's/                   //')
UserName="{SunntCloud}"
CpuPerCent=$(sar -u 1 1 | awk '/Average:/ {print 100 - $NF "%"}')
GPUPerCent=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{print $1}')
Time=$(TZ='Asia/Kolkata' date -u)

xsetroot -name "| 🎮--GPU-$GPUPerCent%-- | 💻--CPU-$CpuPerCent-- | 🔋--$BatarryStatus-$Batarry-- |"

lss
   sleep 100
 done
