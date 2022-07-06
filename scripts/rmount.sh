su - root -c "wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/rclone.conf && mkdir -p /root/.config/rclone/ && cp rclone.conf /root/.config/rclone "
curl https://rclone.org/install.sh | sudo bash > /dev/null 2>&1
rclone lsd Teamdrive:
mkdir Cloud && cd Cloud
mkdir -p Mega Teamdrive Drive
rclone mount   Teamdrive: Teamdrive -daemon --vfs-cache-mode full
sleep 3 && rclone mount full Mega: Mega -daemon --vfs-cache-mode full
sleep 3 && rclone mount full  Drive: Drive -daemon --vfs-cache-mode full
sleep 3 && cd Mega && ls
