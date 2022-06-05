#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
export XKL_XMODMAP_DISABLE=1 
export XDG_CURRENT_DESKTOP="GNOME-Flashback:Unity" 
export XDG_MENU_PREFIX="gnome-flashback-" 
unset DBUS_SESSION_BUS_ADDRESS 
gnome-session -session=gnome-flashback-metacity -disable-acceleration-check --debug &
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
gnome-terminal &
