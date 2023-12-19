#!/bin/bash

cp ~/.Xresources for_hidpi/
cp ~/.config/chromium-flags.conf for_hidpi/

cp ~/start.sh home/
cp ~/x.sh home/
cp ~/create_backup.sh home/
cp ~/.xinitrc home/

cp ~/.bashrc home/
cp ~/.tmux.conf home/
cp -R ~/bin home/

# emacs
cp ~/.emacs.d/config.org home/.emacs.d/
cp ~/.emacs.d/init.el home/.emacs.d/

# moc
cp ~/.moc/config home/.moc/
cp ~/.moc/keymap home/.moc/
cp -R ~/.moc/themes home/.moc/

cp -R ~/.config/kitty .config/

# nvim
cp ~/.config/nvim/init.lua .config/nvim
cp -R ~/.config/nvim/lua .config/nvim
