./dwm_status &
nm-applet &
blueman-applet & 
#setxkbmap -model abnt2 -layout br -variant abnt2
setxkbmap -model thinkpad60 -layout br
#picom &
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
clipmenud &
redshift-gtk &
dunst &
sleep 1 && tela & #This is a script to ajust my resolution on a external monitor when it is pluged
gnome-keyring-daemon --start 1> /dev/null
# echo "_JAVA_AWT_WM_NONREPARENTING=1" > /etc/profile.d/jre.sh
