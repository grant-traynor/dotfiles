#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run xscreensaver
run mpd
run compton -b -d :1
