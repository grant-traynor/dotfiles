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

# SSH Agent Stuff
SSH_ENV="$HOME/.ssh/agent-env"
function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Bash Git Completion
if [ -f "/usr/share/git/completion/git-completion.bash" ]
then
  source /usr/share/git/completion/git-completion.bash
fi

# Node Version Manager
if [ -f /usr/share/nvm/init-nvm.sh ]
then
  source /usr/share/nvm/init-nvm.sh
fi

# TNS Completion
if [ -f /home/gkt/.tnsrc ]; then 
    source /home/gkt/.tnsrc 
fi

# Android
export ANDROID_HOME=$HOME/local/android-sdk
export PATH=$PATH:$HOME/local/android-studio/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
if [ -d $HOME/local/flutter/.pub-cache/bin ]
then
  export PATH="$PATH":"$HOME/local/flutter/.pub-cache/bin"
fi

# Terminfo
export TERM=xterm-256color

# Ansible Vault Password
export ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.ssh/ansible_vault
