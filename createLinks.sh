#!/bin/bash

# Bash
rm ~/.bashrc
ln -s dotfiles/bashrc ~/.bashrc

# Vim
mkdir -p ~/.vim
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/gvimrc ~/.gvimrc
ln -s ~/dotfiles/vim/after ~/.vim/after

# Awesome
#ln -s ~/dotfiles/awesome ~/.config/awesome

# Spectrm
ln -s ~/dotfiles/spectrwm.conf ~/.spectrwm.conf
ln -s ~/dotfiles/spectrwm_us.conf ~/.spectrwm_us.conf

# Conky
ln -s ~/dotfiles/conky.conf ~/.config/conky/conky.conf

# Termite
mkdir -p ~/.config/termite
ln -s ~/dotfiles/termite/base16-solarized-dark.config ~/.config/termite/config


