#!/bin/sh
xrdb ~/.Xresources
xrandr --auto
slstatus &
picom &
emacs --daemon &
flameshot &
exec dwm
