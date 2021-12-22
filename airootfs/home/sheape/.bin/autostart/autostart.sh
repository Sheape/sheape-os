#!/usr/bin/env bash

#TITLE: autostart.sh
#This script is going to start all the processes and commands written in this file.

# Change this path to the path of the wallpaper if you modify the location.
wallpaper_path="$HOME/.config/qtile/assets/wallpaper/cityscape-pixel-art-sunlight.png"

picom -b --experimental-backends &
dunst &
redshift &
feh --bg-fill $wallpaper_path &

# Uncomment this line if you are using the default qwerty layout located in /usr/share/X11/xkb/symbols/us
# setxkbmap -layout us && xset r rate 300 50

# Uncomment this line if you are using the default official workman layout located in /usr/share/X11/xkb/symbols/us
# setxkbmap -layout us -variant workman && xset r rate 300 50

# Use this command if you installed workman-git from AUR repo or modified your own workman layout. Located in /usr/share/X11/xkb/symbols/workman
setxkbmap -layout workman && xset r rate 300 50 

eww daemon &
emacs --daemon
