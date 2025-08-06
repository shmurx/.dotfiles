#!/usr/bin/env bash
read -p "Are you sure? This will permanently delete existing files. [y/N]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then

  echo
  echo "symlink nvim config..."
  rm -rf ~/.config/nvim
  ln -s ~/dotfiles/.config/nvim/ ~/.config/

  echo "symlink fish config..."
  rm -rf ~/.config/fish
  ln -s ~/dotfiles/.config/fish/ ~/.config/

  echo "symlink i3..."
  rm -rf ~/.config/i3
  rm -rf ~/.config/i3status
  ln -s ~/dotfiles/.config/i3/ ~/.config/
  ln -s ~/dotfiles/.config/i3status/ ~/.config/

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

  echo "Improve Bundle installs..."
  cp .gemrc ~/.gemrc

fi
