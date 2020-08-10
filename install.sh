#!/bin/bash

sudo pacman-mirrors -f5
sudo pacman -Syyu

sudo pacman -Syy --noconfirm
sudo pacman -S --noconfirm gnome-terminal
sudo pacman -S --noconfirm neovim tmux chromium
sudo pacman -S --noconfirm zsh zsh-autosuggestions zsh-syntax-highlighting

# sudo pacman -S --noconfirm xorg-xrdb xorg-xrandr rxvt-unicode
# sudo pacman -S --noconfirm wqy-microhei
# sudo pacman -S --noconfirm i3-gaps picom conky ttf-dejavu
# sudo pacman -S --noconfirm gtkmm3

cp ~/.i3/config ~/.3/config.orig
cp ~/.profile ~/.profile.orig
cp ~/.Xresources ~/.Xresources.orig
cp  ~/.config/mimeapps.list ~/.config/mimeapps.list.orig

# sudo cp mnt.hgfs.service /etc/systemd/system/mnt.hgfs.service
# sudo systemctl enable mnt.hgfs.service

xrandr --output Virtual1 --primary --mode 1680x1050

# sudo pacman-mirrors -ic China -m rank

chsh -s /bin/zsh
