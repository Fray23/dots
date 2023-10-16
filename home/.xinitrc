#!/bin/sh
xrdb ~/.Xresources
xrandr --auto
feh --bg-fil /home/fs/Pictures/nordic-wallpapers/ign_unsplash7.png
slstatus &
picom &
emacs --daemon &
flameshot &
exec dwm
