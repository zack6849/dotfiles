#!/usr/bin/fish
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
xsetroot -cursor_name left_ptr
xset +fp $HOME/.fonts
xset fp rehash
xrdb $HOME/.Xresources
xrandr --output DP-1 --left-of HDMI-1
sh $HOME/.fehbg

udiskie -2 &

autocutsel -fork &
autocutsel -selection PRIMARY -fork &


export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
killall ssh-agent
eval $(ssh-agent)
exec bspwm 
exec dropbox start
set -gx SSH_AUTH_SOCK (gnome-keyring-daemon --start --components=pkcs11,secrets,ssh | grep "^SSH_AUTH_SOCK" | cut -d'=' -f2')
