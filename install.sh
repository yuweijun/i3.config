#!/bin/bash

xrandr --output Virtual1 --primary --mode 1680x1050

sudo pacman-mirrors -ic China -m rank
sudo pacman -Syy --noconfirm
sudo pacman -S --noconfirm i3-gaps picom conky xorg-xrdb xorg-xrandr i3status-manjaro rxvt-unicode neovim tmux chromium ttf-dejavu zsh zsh-autosuggestions zsh-syntax-highlighting wqy-microhei gtkmm3

cp ~/.profile ~/.profile.orig
cp ~/.Xresources ~/.Xresources.orig
cp  ~/.config/mimeapps.list ~/.config/mimeapps.list.orig

cp .profile ~/.profile
cp .Xresources ~/.Xresources
cp mimeapps.list ~/.config/mimeapps.list

cp config ~/.i3/config
cp status.min.toml ~/.i3/status.toml
cp i3status-rs ~/.i3/i3status-rs

sudo cp mnt.hgfs.service /etc/systemd/system/mnt.hgfs.service
sudo systemctl enable mnt.hgfs.service
