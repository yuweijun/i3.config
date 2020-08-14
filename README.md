# virtual machine config for i3 wm

$ sudo pacman -S --noconfirm i3-gaps picom conky xorg-xrdb xorg-xrandr i3status-manjaro rxvt-unicode neovim chromium ttf-dejavu ttf-dejavu-sans-mono-powerline

install i3status-rust from [https://github.com/greshake/i3status-rust/](https://github.com/greshake/i3status-rust/), and then:

## install in vmware

    ./install.sh

## install in virtualbox

    ./install.sh
    sed -i 's/ens33/enp0s3/' ~/.i3/status.toml

## rxvt-unicode-patched installation

    git clone https://aur.archlinux.org/rxvt-unicode-patched.git
    cd rxvt-unicode-patched
    makepkg -s
    sudo pacman -U rxvt-unicode-patched-9.19-1-x86_64.pkg.tar.xz

## Google chrome

    git clone https://aur.archlinux.org/google-chrome.git
    cd google-chrome
    makepkg -s
    sudo pacman -U google-chrome*.tar.xz
    # or
    # yay -S google-chrome

## copy/paste between host and vm

    # open-vm-tools-desktop
    pacman -S open-vm-tools
    vmware-user-suid-wrapper

## picom start failure issue

    > "paint-on-overlay" has been removed as an option

Delete the original ~/.config/compton.conf


