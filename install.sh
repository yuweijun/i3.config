#!/bin/bash

xrandr --output Virtual1 --primary --mode 1680x1050

sudo pacman-mirrors -ic China -m rank
sudo pacman -Syy --noconfirm
sudo pacman -S --noconfirm i3-gaps picom conky xorg-xrdb xorg-xrandr i3status-manjaro rxvt-unicode neovim chromium ttf-dejavu ttf-dejavu-sans-mono-powerline

ln -sfn .profile ~/.profile
ln -sfn .Xresources ~/.Xresources
ln -sfn mimeapps.list ~/.config/mimeapps.list

ln -sfn config ~/.i3/config
ln -sfn status.toml ~/.i3/status.toml
ln -sfn i3status-rs ~/.i3/i3status-rs