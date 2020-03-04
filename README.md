# virtual machine config for i3 wm

$ sudo pacman -S --noconfirm i3-gaps picom conky xorg-xrdb xorg-xrandr i3status-manjaro rxvt-unicode neovim chromium ttf-dejavu ttf-dejavu-sans-mono-powerline

install i3status-rust from [https://github.com/greshake/i3status-rust/](https://github.com/greshake/i3status-rust/), and then:

## install in vmware

    ./install.sh

## install in virtualbox

    ./install.sh
    sed -i 's/ens33/enp0s3/' ~/.i3/status.toml

