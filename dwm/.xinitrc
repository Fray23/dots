#!/bin/sh
pipewire &
pipewire-pulse &
pipewire-media-session &
slstatus &
exec dwm
