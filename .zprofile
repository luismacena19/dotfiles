#!/bin/bash
#
# /etc/zprofile and ~/.zprofile are run for login shells
#
#

PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/applications"
EDITOR='nvim'
DESKTOP_SESSION="dwm"
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

