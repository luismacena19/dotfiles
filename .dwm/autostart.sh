$HOME/.dwm/dwm_status &
nm-applet &
blueman-applet & 
setxkbmap -model abnt2 -layout br -variant abnt2
lxpolkit &
clipmenud &
redshift-gtk &
xfce4-power-manager &
dunst &
sleep 1 && tela & #This is a script to ajust my resolution on a external monitor when it is pluged
gnome-keyring-daemon --start 1> /dev/null
xrdb -merge ~/.Xresources
