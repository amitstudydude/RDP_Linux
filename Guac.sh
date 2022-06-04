#! /bin/bash
cd
sudo apt install --allow-change-held-packages --fix-broken -y libpulse-dev  libssl-dev libvorbis-dev libwebsockets-dev libvncserver-dev libtelnet-dev libssh2-1-dev libpango1.0-dev freerdp2-dev libavcodec-dev libavformat-dev libavutil-dev   libossp-uuid-dev libtool-bin uuid-dev   libcairo2-dev  && \
 wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
printf "n\nn\ny\nroot\nroot\nroot\nroot" | bash guac-install.sh 



curl -O https://pagekite.net/pk/pagekite.py
chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin
printf "y0nxj8ze4@mozmail.com\na3z2cfdb" | pagekite.py --login







