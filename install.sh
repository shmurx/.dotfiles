#!/usr/bin/env bash
read -p "Are you sure? This will permanently delete existing files. [y/N]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then

  echo
  echo "symlink rofi config"
  rm -rf ~/.config/rofi
  ln -s ~/dotfiles/.config/rofi/ ~/.config/

  echo "setup git config..."
  rm ~/.gitconfig
  cp .gitconfig ~/.gitconfig

  echo "setup zsh..."
  rm ~/.zshrc
  cp .zshrc ~/.zshrc

  echo "symlink bspwm config..."
  rm -rf ~/.config/sxhkd/
  ln -s ~/dotfiles/.config/sxhkd ~/.config/
  rm -rf ~/.config/bspwm/
  ln -s ~/dotfiles/.config/bspwm ~/.config/

  echo "symlink dunst config..."
  rm -rf ~/.config/dunst/
  ln -s ~/dotfiles/.config/dunst ~/.config/

  echo "symlink alacritty config..."
  rm -rf ~/.config/alacritty/
  ln -s ~/dotfiles/.config/alacritty ~/.config/

  echo "symlink polybar config..."
  rm -rf ~/.config/polybar/
  ln -s ~/dotfiles/.config/polybar ~/.config/

fi
