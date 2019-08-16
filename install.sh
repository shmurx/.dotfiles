#!/usr/bin/env bash
read -p "Are you sure? This will permanently delete existing files. [y/N]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then

  echo
  echo "symlink fish config..."
  rm -rf ~/.config/fish
  ln -s ~/dotfiles/.config/fish/ ~/.config/

  echo "symlink i3..."
  rm -rf ~/.config/i3
  rm -rf ~/.config/i3status
  ln -s ~/dotfiles/.config/i3/ ~/.config/
  ln -s ~/dotfiles/.config/i3status/ ~/.config/

  echo "symlink rofi config"
  rm -rf ~/.config/rofi
  ln -s ~/dotfiles/.config/rofi/ ~/.config/

  echo "symlink tmuxinator projects..."
  rm -rf ~/.tmuxinator
  ln -s ~/dotfiles/.tmuxinator/ ~/

  echo "setup your git config..."
  rm ~/.gitconfig
  cp .gitconfig ~/.gitconfig

  echo "setup your URxvt config..."
  rm ~/.Xdefaults
  cp .Xdefaults ~/.Xdefaults

  echo "setup tmux..."
  rm ~/.tmux.conf
  cp .tmux.conf ~/.tmux.conf

fi
