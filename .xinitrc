setxkbmap -model abnt2 -layout br -variant abnt2
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export AWT_TOOLKIT=MToolkit
dbus-update-activation-environment --all
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

exec /usr/local/bin/dwm &> /home/nullroot_/tmp/logs/dwm.logs