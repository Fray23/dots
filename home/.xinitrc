#!/bin/sh
# uncomment for hidpi
# xrdb ~/.Xresources
xrandr --auto
pipewire &
pipewire-pule &
pipewire-media-session &
slstatus &
picom &
exec dwm
