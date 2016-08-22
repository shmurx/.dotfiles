#!/usr/bin/env bash

echo 'symlinking nvim config...'
rm -rf ~/.config/nvim
ln -s ~/Code/dotfiles/.config/nvim/ ~/.config/

echo 'setup your git config'
rm ~/.gitconfig
cp .gitconfig ~/.gitconfig

echo 'setup your URxvt config'
rm ~/.Xdefaults
cp .Xdefaults ~/.Xdefaults
