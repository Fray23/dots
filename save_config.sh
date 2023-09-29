#!/bin/bash

cp ~/.Xresources for_hidpi/
cp ~/.config/chromium-flags.conf for_hidpi/

cp ~/start.sh home/
cp ~/.xinitrc home/

cp ~/.bashrc home/
cp ~/.tmux.conf home/
cp -R ~/bin home/
cp -R ~/.emacs.d home/
cp -R ~/.moc home/

cp -R ~/.config/kitty .config/
cp -R ~/.config/nvim .config/
