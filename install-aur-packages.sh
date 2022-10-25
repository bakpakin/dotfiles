#!/bin/bash

aur_latest() {
    URL="https://aur.archlinux.org/$1.git"
    mkdir -p ./aur_temp
    if test -e "./aur_temp/$1"; then
        cd "./aur_temp/$1"
        git pull --ff-only
    else
        git clone "$URL" "./aur_temp/$1"
        cd "./aur_temp/$1"
    fi
    makepkg
    pacman -U *.pkg.tar.zst
    cd ../..
}

aur_latest nerd-fonts-hack
