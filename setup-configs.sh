#!/bin/bash

link_dot () {
    mkdir -p $(dirname "$1")
    ln -s "$(pwd)/$1" "$HOME/$1"
}

# Univeral setup
link_dot .bashrc
link_dot .tmux.conf
link_dot .inputrc
link_dot .functions
link_dot .vimrc
link_dot .gitconfig
link_dot .config/nvim/init.vim
link_dot .config/sway/config

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Source new bashrc if needed
source "$HOME/.bashrc"
