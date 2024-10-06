#!/bin/bash
#
# /etc/zprofile and ~/.zprofile are run for login shells
#
#

PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/applications"
EDITOR='nvim'
DESKTOP_SESSION="dwm"
TERM='xterm-256color'
export DESKTOP_SESSION
export PATH
export CM_DIR=~/.cache
export TERM
export EDITOR
setxkbmap -model abnt2 -layout br -variant abnt2


# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; 
#   then exec startx ~/.xinitrc ; 
# fi
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}
# Setup pyenv https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Setup Nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#increase 
xset r rate 300 50
