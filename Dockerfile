cat >Dockerfile <<EOF
FROM ubuntu:22.04
RUN apt update && apt install sudo wget -y && useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && usermod -a -G sudo,adm user && apt install keyboard-configuration -y && clear && apt install dbus-x11 -y && clear && sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh && sudo apt install ./*.deb -y && clear && sudo apt install firefox dbus-x11 -y && clear && sudo apt install xfce4 xfce4-goodies -y && clear && clear && yes user | sudo passwd && clear
CMD bash
EOF
docker build - < Dockerfile
