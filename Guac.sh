#! /bin/bash
cd
sudo apt install --allow-change-held-packages --fix-broken -y libpulse-dev  libssl-dev libvorbis-dev libwebsockets-dev libvncserver-dev libtelnet-dev libssh2-1-dev libpango1.0-dev freerdp2-dev libavcodec-dev libavformat-dev libavutil-dev   libossp-uuid-dev libtool-bin uuid-dev   libcairo2-dev  && \
printf 'n\nn\ny\nroot\nroot\nroot\nroot\' | wget https://raw.githubusercontent.com/MysticRyuujin/guac-install/main/guac-install.sh && \
bash guac-install.sh 












