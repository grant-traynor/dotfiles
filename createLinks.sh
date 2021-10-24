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

# Base16 Shell - Color Schemes
pushd ~/.config
if [ ! -d "base16-shell" ] ; then
  git clone https://github.com/chriskempson/base16-shell.git base16-shell
else
  pushd base16-shell
  git pull origin
  popd
fi
popd

# XMonad
mkdir -p ~/.xmonad
ln -sf ~/dotfiles/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
ln -sf ~/dotfiles/xmonad/xmobarrc ~/.xmobarrc
ln -sf ~/dotfiles/xmonad/xinitrc ~/.xinitrc
