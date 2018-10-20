#!/bin/bash

# Make backup
BACKUP="$HOME/dotfile-backup"
mkdir -p "$BACKUP"
[ -x "$HOME/.tmuc.conf" ] && mv "$HOME/.bashrc" "$BACKUP"
[ -x "$HOME/.tmux.conf" ] && mv "$HOME/.tmux.conf" "$BACKUP"
[ -x "$HOME/.inputrc" ] && mv "$HOME/.inputrc" "$BACKUP"
[ -x "$HOME/.vimrc" ] && mv "$HOME/.vimrc" "$BACKUP"
[ -x "$HOME/.functions" ] && mv "$HOME/.functions" "$BACKUP"
[ -x "$HOME/.ssh/config" ] && mv "$HOME/.ssh/config" "$BACKUP"

# Set up dotfiles on a machine
cp .bashrc "$HOME/.bashrc"
cp .tmux.conf "$HOME/.tmux.conf"
cp .inputrc "$HOME/.inputrc"
cp .vimrc "$HOME/.vimrc"
cp ".functions" "$HOME/.functions"
mkdir -p "$HOME/.ssh"
cp ".ssh/config" "$HOME/.ssh/config"

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
