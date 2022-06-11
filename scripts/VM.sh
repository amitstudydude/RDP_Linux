cat >VM.sh <<EOF
#!/bin/bash
read -p "" CODE
echo $CODE
ID="$CODE"
echo "$ID"
export $ID
gcloud compute instances create instance \
--project=$ID \
--zone=asia-south2-a \
--machine-type=custom-6-39936 \
--image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20220420 \
--boot-disk-size=500 \
--boot-disk-type=projects/$ID/zones/asia-south2-a/diskTypes/pd-ssd 
gcloud compute ssh --zone "asia-south2-a" "instance"  --project "$ID"

EOF
bash VM.sh





sudo apt update && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/ngrok.sh https://filebin.net/ri9hxr16detbtpym/colabfire.7z https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb 
sudo apt install -y --fix-broken ./*.deb && rm *.deb
sudo useradd -m user && sudo adduser user sudo && yes user | sudo passwd user && sudo usermod -a -G sudo,adm,chrome-remote-desktop user
sudo apt install xfce4-terminal xarchiver firefox icewm -y 

.
