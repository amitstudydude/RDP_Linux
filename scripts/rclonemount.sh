#rclonemount
mkdir -p ~/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclone.conf && mv rclone.conf ~/.config/rclone && curl https://rclone.org/install.sh | sudo bash && rclone listremotes && mkdir -p onedrive && rclone mount onedrive: ./onedrive --vfs-cache-mode full --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other  --transfers 100 --daemon --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s -P

rclone mount onedrive: ./onedrive --vfs-cache-mode full --user-agent 'Mozilla' --vfs-cache-mode full --cache-dir 'cache' --allow-other  --transfers 100 --daemon --vfs-cache-poll-interval 1s --vfs-cache-max-age 1s --vfs-write-back 1s -P



#url to onedrive

mkdir -p ~/.config/rclone/ && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/scripts/rclone.conf && mv rclone.conf ~/.config/rclone && curl https://rclone.org/install.sh | sudo bash && rclone listremotes && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/refs/heads/main/scripts/rcloneupload && bash rcloneupload && rm rcloneupload