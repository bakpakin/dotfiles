#!/bin/bash

link_dot () {
    ln -s "$(pwd)/$1" "$HOME/$1"
}

# Univeral setup
link_dot .bashrc
link_dot .tmux.conf
link_dot .inputrc
link_dot .vimrc
link_dor .gitconfig

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Source new bashrc if needed
source "$HOME/.bashrc"
