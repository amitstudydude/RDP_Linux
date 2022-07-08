sudo DEBIAN_FRONTEND=noninteractive apt -y install tomcat9-admin tomcat9-user tomcat9-common openssh-server ssh apt-utils gcc g++ openjdk-8-jdk gnome-session  libjson-c-dev cmake libwebsockets-dev build-essential make expect libavcodec-dev libavutil-dev libavformat-dev libwebsockets-dev git libtelnet-dev libpango1.0-dev libswscale-dev libpulse-dev libvorbis-dev libwebp-dev libssl-dev libssh2-1-dev freerdp2-dev libvncserver-dev libossp-uuid-dev libtool-bin libpng-dev libjpeg-turbo8-dev libcairo2-dev xrdp tomcat9 maven build-essential
cd /root 
cat >rclone.sh <<EOF             
mkdir -p /root/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mv rclone.conf /root/.config/rclone 
curl https://rclone.org/install.sh | sudo bash 
mkdir drives && cd drives && mkdir Mega Teamdrive Drive cache 
rclone mount Mega: Mega --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100 --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s 
rclone mount Teamdrive: Teamdrive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s 
rclone mount Drive: Drive --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other --daemon --transfers 100  --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s             
EOF
#sudo bash rclone.sh 
rm rclone.sh
 
 
