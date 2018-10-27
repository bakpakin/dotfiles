#!/bin/bash

# Univeral setup
cp .bashrc "$HOME/.bashrc"
cp .tmux.conf "$HOME/.tmux.conf"
cp .inputrc "$HOME/.inputrc"
cp .vimrc "$HOME/.vimrc"
cp .gitconfig "$HOME/.gitconfig"
cp ".functions" "$HOME/.functions"
cp .fff "$HOME/.fff"; chmod +x "$HOME/.fff"
mkdir -p "$HOME/.ssh"; cp .ssh/config "$HOME/.ssh/config"

# Linux (Arch)
cp .Xresources "$HOME/.Xresources"
cp .xinitrc "$HOME/.xinitrc"
cp -r .config "$HOME/.config"

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Source new bashrc if needed
source "$HOME/.bashrc"
