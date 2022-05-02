

docker run -p 8080:3000 lscr.io/linuxserver/webtop:ubuntu-xfce
sudo wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
sudo apt install --assume-yes --fix-broken ./*.deb  
sudo DEBIAN_FRONTEND=noninteractive apt install keyboard-configuration -y   
