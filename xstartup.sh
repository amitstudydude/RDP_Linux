#!/bin/bash
sudo apt-get install indicator-applet-complete
sudo apt install ubuntu-desktop gnome-session-flashback nautilus mate-terminal gnome-panel ubuntu* gnome* gnome-settings-daemon metacity
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
chmod +x xstartup
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
export XKL_XMODMAP_DISABLE=1 
export XDG_CURRENT_DESKTOP="GNOME-Flashback:Unity" 
export XDG_MENU_PREFIX="gnome-flashback-" 
gnome-session -session=gnome-flashback-metacity -disable-acceleration-check --debug &
gnome-panel &
gsettings set org.gnome.desktop.background show-desktop-icons true &
metacity &
nautilus &
mate-terminal &
ubuntu-sesstings &
sudo cat xstartup.sh > xstartup 
vncserver -alwaysshared




