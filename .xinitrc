setxkbmap -model abnt2 -layout br -variant abnt2
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export AWT_TOOLKIT=MToolkit

exec /usr/local/bin/dwm

