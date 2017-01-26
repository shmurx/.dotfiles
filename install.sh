#!/usr/bin/env bash
read -p "Are you sure? This will permanently delete existing files. [y/N]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then

  echo
  echo "symlink nvim config..."
  rm -rf ~/.config/nvim
  ln -s ~/Code/dotfiles/.config/nvim/ ~/.config/

  echo "symlink fish config..."
  rm -rf ~/.config/fish
  ln -s ~/Code/dotfiles/.config/fish/ ~/.config/

  echo "setup your git config..."
  rm ~/.gitconfig
  cp .gitconfig ~/.gitconfig

  echo "setup your URxvt config..."
  rm ~/.Xdefaults
  cp .Xdefaults ~/.Xdefaults

  echo "setup tmux..."
  rm ~/.tmux.conf
  cp .tmux.conf ~/.tmux.conf

  echo "Improve Bundle installs..."
  cp .gemrc ~/.gemrc

fi
