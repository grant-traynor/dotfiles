#!/usr/bin/env zsh
# Based upon 
# https://github.com/xmonad/xmonad/blob/8dac0577b4050dddea040039e1bfb12c2f544afb/INSTALL.md

export VER="master"

# Install dependencies
yay -S --noconfirm \
	git \
	libx11 libxft libxinerama libxrandr libxss \
	pkgconf \
	xinit-xsession

# xmonad from source
mkdir -p ~/.config/xmonad && pushd ~/.config/xmonad

if [ ! -d "xmonad" ] ; then
  git clone --branch $VER https://github.com/xmonad/xmonad
  git clone --branc $VER https://github.com/xmonad/xmonad-contrib
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

stack install

# Build file
cat  <<EOF > build
#!/bin/sh

exec stack ghc --  \\
  --make xmonad.hs \\
  -i               \\
  -ilib            \\
  -fforce-recomp   \\
  -main-is main    \\
  -v0              \\
  -o "$1"
EOF

chmod u+x build
