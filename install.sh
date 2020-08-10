#!/bin/bash

sudo pacman -S --noconfirm i3-gaps picom conky xorg-xrdb xorg-xrandr rxvt-unicode neovim tmux chromium ttf-dejavu zsh zsh-autosuggestions zsh-syntax-highlighting wqy-microhei gtkmm3

cp ~/.profile ~/.profile.orig
cp ~/.Xresources ~/.Xresources.orig
cp  ~/.config/mimeapps.list ~/.config/mimeapps.list.orig

sudo cp mnt.hgfs.service /etc/systemd/system/mnt.hgfs.service
sudo systemctl enable mnt.hgfs.service

xrandr --output Virtual1 --primary --mode 1680x1050
sudo pacman-mirrors -ic China -m rank
sudo pacman -Syy --noconfirm

chsh -s /bin/zsh
