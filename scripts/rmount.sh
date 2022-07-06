su - root -c "wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mkdir -p /root/.config/rclone/ && cp rclone.conf /root/.config/rclone "
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
rclone lsd Teamdrive:
mkdir Cloud && cd Cloud
mkdir -p Mega Teamdrive Drive
rclone mount Teamdrive: Teamdrive &
sleep 3 && rclone mount  --vfs-cache-mode full Mega: Mega &
sleep 3 && rclone mount Drive: Drive &
sleep 3 && cd Mega && cp * /content
