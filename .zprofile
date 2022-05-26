#
# /etc/zprofile and ~/.zprofile are run for login shells
#
TERM="xfce4-terminal"
PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/applications"
EDITOR='nvim'
DESKTOP_SESSION="dwm"
export DESKTOP_SESSION
export PATH
export CM_DIR=~/.cache
export TERM
export EDITOR
#setxkbmap -model thinkpad60 -layout br

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; 
  then exec startx ~/.xinitrc ; 
fi
