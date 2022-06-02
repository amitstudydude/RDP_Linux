#!/bin/sh

# Uncomment the following two lines for normal desktop:
#unset SESSION_MANAGER
 #exec /etc/X11/xinit/xinitrc
#gnome-session --session=gnome-classic &

[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
vncconfig -iconic &
#x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
 #x-window-manager &

unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
export GNOME_SHELL_SESSION_MODE=classic
/etc/X11/xinit/xinitrc
# Assume either Gnome will be started by default when installed
# We want to kill the session automatically in this case when user logs out. Incase you modify
# /etc/X11/xinit/Xclients or ~/.Xclients yourself to achieve a different result, then you should
# be responsible to modify below code 
