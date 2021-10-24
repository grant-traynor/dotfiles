#!/bin/bash

# Bash
ln -sf ~/dotfiles/bashrc ~/.bashrc

# Zsh
ln -sf ~/dotfiles/zshrc ~/.zshrc

# Vim
mkdir -p ~/.vim
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/gvimrc ~/.gvimrc
ln -sf ~/dotfiles/vim/after ~/.vim/after

# Alacritty
mkdir -p ~/.config/alacritty/
ln -sf ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
# - Alacritty
if [ ! -d "alacritty/base16-alacritty" ] ; then
  git clone https://github.com/aarowill/base16-alacritty alacritty/base16-alacritty
else
  pushd alacritty/base16-alacritty
  git pull origin
  popd
fi

# XMonad
mkdir -p ~/.xmonad
ln -sf ~/dotfiles/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
ln -sf ~/dotfiles/xmonad/xmobarrc ~/.xmobarrc
