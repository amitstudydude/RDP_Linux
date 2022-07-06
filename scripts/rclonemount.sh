su - root -c "wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mkdir -p /root/.config/rclone/ && cp rclone.conf /root/.config/rclone "
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
rclone lsd Teamdrive:
mkdir Cloud && cd Cloud
mkdir -p Mega Teamdrive Drive
rclone mount Teamdrive: Teamdrive > /dev/null 2>&1 &
sleep 3 && rclone mount Mega: Mega > /dev/null 2>&1 &
sleep 3 && rclone mount Drive: Drive > /dev/null 2>&1 &
sleep 3 
