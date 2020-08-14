#!/bin/bash

sudo pacman-mirrors -ic China -m rank
sudo pacman -Syy --noconfirm
sudo pacman -S --noconfirm termite
sudo pacman -S --noconfirm neovim tmux
sudo pacman -S --noconfirm zsh zsh-autosuggestions zsh-syntax-highlighting
sudo pacman -S --noconfirm xorg-xrdb xorg-xrandr
sudo pacman -S --noconfirm wqy-microhei
sudo pacman -S --noconfirm xclip
sudo pacman -S --noconfirm rofi
sudo pacman -S --noconfirm i3-gaps picom conky ttf-dejavu i3status-manjaro
sudo pacman -S ttf-font-awesome

sudo pacman -S --noconfirm open-vm-tools
# sudo pacman -S --noconfirm gtkmm gtkmm3

cp ~/.i3/config ~/.i3/config.orig
cp ~/.profile ~/.profile.orig
cp ~/.Xresources ~/.Xresources.orig
cp ~/.config/mimeapps.list ~/.config/mimeapps.list.orig

mkdir -p ~/.config/termite
cp termite.config ~/.config/termite/config

cp config ~/.i3/config
cp status.min.toml ~/.i3/status.toml
cp i3status-rs ~/.i3/i3status-rs

sudo cp mnt.hgfs.service /etc/systemd/system/mnt.hgfs.service
sudo systemctl enable mnt.hgfs.service

xrandr --output Virtual1 --primary --mode 1680x1050

chsh -s /bin/zsh
