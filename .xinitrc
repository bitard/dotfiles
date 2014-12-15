#!/bin/sh

#settings
xset -b
xrdb -merge ~/.Xresources

#background
feh --bg-scale /usr/share/wallpapers/dark-girl.jpg

#trackball middle button emulation
xinput set-prop "Primax Kensington Eagle Trackball" "Evdev Middle Button Emulation" 1

#hide mouse coursor when it isn't used
unclutter -root -visible &

#dbus instance
eval `dbus-launch --sh-syntax --exit-with-session`

#apps

urxvtd &

#keyboard layout
setxkbmap -layout us,ru -option grp:alt_shift_toggle
xmodmap ~/.i3/xmodmap
[ -e ~/.xmodmap_local ] && xmodmap ~/.xmodmap_local

#notification
dunst -config ~/.i3/dunstrc &

#other

[ -e /usr/bin/dropboxd ] && /usr/bin/dropboxd &

# Mpd scrobbling client

mpdscribble &

#composition manager

xcompmgr -Ff &

# Window manager/DE

i3

