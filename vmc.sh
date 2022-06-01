DISPLAY=:1
sudo apt install -y magic-wormhole dbus-x11 ssh openssh-server xrdp tmate apt-utils software-properties-common apt-transport-https sudo psmisc tmux nano wget curl telnet gnupg gdb git gitk autoconf locales gdebi meld dos2unix meshlab  python3 python3-dev python3-pip python3-setuptools unzip tmate dos2unix tmux git xserver-xorg-video-dummy xserver-xorg-legacy x11vnc bash-completion build-essential cmake cmake-curses-gui coinor-libipopt-dev curl freeglut3-dev git libace-dev libboost-filesystem-dev libboost-system-dev libboost-thread-dev libdc1394-22-dev libedit-dev libeigen3-dev libgsl0-dev libjpeg-dev liblua5.1-dev libode-dev libopencv-dev libsdl1.2-dev libtinyxml-dev libv4l-dev libxml2-dev lua5.1 portaudio19-dev qml-module-qt-labs-folderlistmodel qml-module-qt-labs-settings qml-module-qtmultimedia qml-module-qtquick-controls qml-module-qtquick-dialogs qml-module-qtquick-window2 qml-module-qtquick2 qtbase5-dev qtdeclarative5-dev qtmultimedia5-dev swig libmatio-dev libirrlicht-dev libspdlog-dev libblas-dev liblapack-dev wget sudo nlohmann-json3-dev zsh xonsh ninja-build 
pkill -9 -f "vnc" && pkill -9 -f "xf" && sudo pkill -9 Xorg
sudo rm -f /tmp/.X1-lock
sudo nohup X ${DISPLAY} -config /etc/X11/xorg.conf
nohup gnome-session
nohup startxfce4 
nohup x11vnc -localhost -display :1 -N -forever -shared -bg 
nohup /opt/novnc/utils/novnc_proxy --web /opt/novnc --vnc localhost:5901 --listen 6080
