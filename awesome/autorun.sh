#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run xrandr --output DVI-D-0 --right-of DP-1
