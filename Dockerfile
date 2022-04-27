cat >Dockerfile <<EOF
FROM ubuntu:20.04
RUN apt update && apt install sudo wget apt-utils -y && useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && usermod -a -G sudo,adm user && apt install nano -y && sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y && apt install dbus-x11 -y && sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh && sudo apt install ./*.deb -y && sudo apt install firefox dbus-x11 -y  && sudo apt install xfce4 xfce4-goodies gnome -y && yes user | sudo passwd 
CMD bash
EOF
docker build - < Dockerfile
