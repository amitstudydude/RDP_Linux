mkdir -p ~/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclone.conf && mv rclone.conf ~/.config/rclone && curl https://rclone.org/install.sh | sudo bash
mkdir -p drives && rclone mount onedrive: ./drives --vfs-cache-mode full 
