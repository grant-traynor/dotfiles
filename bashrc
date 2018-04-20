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

# Bash Powerline
source ~/dotfiles/bash-powerline.sh

# Bash Git Completion
if [ -f "/usr/share/bash-completion/bash_completion" ]
then
  source /usr/share/bash-completion/bash_completion
fi

# Node Version Manager
source /usr/share/nvm/init-nvm.sh

###-tns-completion-start-###
if [ -f /home/gkt/.tnsrc ]; then 
    source /home/gkt/.tnsrc 
fi
###-tns-completion-end-###

# Android
export ANDROID_HOME=$HOME/local/android-sdk
export PATH=$PATH:$HOME/local/android-studio/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

