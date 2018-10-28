#!/bin/bash

if [ -f "/etc/arch-release" ]; then
    # Install official arch packages
    pacman -Syyu $(cat ./pkglist.txt | tr '\n' ' ') --noconfirm

    # Install yay
    yaydir=/tmp/yaydir/
    git clone https://aur.archlinux.org/yay.git "$yaydir"
    pushd "$yaydir"
    makepkg -si
    popd
    rm -rf "$yaydir"

    # Install aur packages
    yay -Syyu $(cat ./yay.txt | tr '\n' ' ') --noconfirm
else
    echo "Don't know how to install packages on this system."
fi
