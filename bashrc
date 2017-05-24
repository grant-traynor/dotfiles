#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# Set Vi Command Line Mode
set -o vi

# Use Vim as Vi if it's installed.
if [ -f "/usr/bin/vim" ]
then
 alias vi="vim"
else
 alias vim="vi"
fi

export EDITOR=vim
