#! /bin/bash
cd && cd ../..
printf "root\nroot" | sudo passwd runneradmin && printf "root\nroot" | sudo passwd runner && printf "root\nroot" | sudo passwd root 
printf "root" | su root -c "sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev && git clone https://github.com/tsl0922/ttyd.git && git clone https://github.com/novnc/noVNC.git /opt/novnc && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify && \ 
echo "<html><head><meta http-equiv=\"Refresh\" content=\"0; url=vnc.html?autoconnect=true&reconnect=true&reconnect_delay=1000&resize=scale&quality=9\"></head></html>" > /opt/novnc/index.html && \
cd ttyd && mkdir build && cd build && cmake .. && make && make install && ttyd -p 8080 bash -x & " 
printf "root" | su root -c " wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/tunnel.sh "  
sudo bash tunnel.sh
           
