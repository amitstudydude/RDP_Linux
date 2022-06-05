#!/bin/bash
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
chmod +x xstartup
export XKL_XMODMAP_DISABLE=1 
export XDG_CURRENT_DESKTOP="GNOME-Flashback:GNOME" 
export XDG_MENU_PREFIX="gnome-flashback-" 
gnome-session -session=gnome-flashback-metacity -disable-acceleration-check --debug &
gnome-panel &
vncconfig -iconic &
gsettings set org.gnome.desktop.background show-desktop-icons true &
metacity &
nautilus &
#startxfce4 &
mate-terminal &
ubuntu-sesstings &
sudo cat xstartup.sh > xstartup 
chmod +x xstartup
vncserver -alwaysshared





