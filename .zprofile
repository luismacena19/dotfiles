#
# /etc/zprofile and ~/.zprofile are run for login shells
#

PATH="$PATH:$HOME/bin:$HOME/.local/bin"
export PATH
export CM_DIR=~/.cache
setxkbmap -model thinkpad60 -layout br
_src_etc_profile()
{
    #  Make /etc/profile happier, and have possible ~/.zshenv options like
    # NOMATCH ignored.
    #
    emulate -L ksh

    # source profile
    if [ -f /etc/profile ]; then
	    source /etc/profile
    fi
}
_src_etc_profile

unset -f _src_etc_profile
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; 
  then exec startx; 
fi
