#!/usr/bin/env zsh
# Based upon 
# https://github.com/xmonad/xmonad/blob/8dac0577b4050dddea040039e1bfb12c2f544afb/INSTALL.md

export VER="master"

# Install dependencies
yay -S --noconfirm \
	git \
	libx11 libxft libxinerama libxrandr libxss \
	pkgconf \
	xinit-xsession \
	xclip scrot slock

# xmonad from source
mkdir -p ~/.config/xmonad && pushd ~/.config/xmonad

if [ ! -d "xmonad" ] ; then
  git clone --branch $VER https://github.com/xmonad/xmonad
  git clone --branch $VER https://github.com/xmonad/xmonad-contrib
else
  pushd xmonad
  git pull origin $VER
  popd
  pushd xmonad-contrib
  git pull origin $VER
  popd
fi

if [ ! -f "stack.yaml" ] ; then
  stack init --force
fi

# Clean up old config layouts. Now things live in ~/.config/xmonad
rm -rf /home/$USER/.xmonad

# Build file
ln -sf /home/$USER/dotfiles/xmonad/build .

# Xsession file
ln -sf /home/$USER/dotfiles/xmonad/xsession ~/.xsession

# Xsession file
ln -sf /home/$USER/dotfiles/xmonad/xmonad.hs xmonad.hs

stack install
