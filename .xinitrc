#!/bin/bash
sh ~/.screenlayout/layout.sh
sh ~/.fehbg
xsetroot -cursor_name left_ptr
xset fp rehash
xrdb $HOME/.Xresources
xrandr --output DP-1 --right-of DP-2

#eval (/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

udiskie -2 &

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

killall dunst 
exec dunst &
exec compton &
exec bspwm
fix-fucking-java
xterm
