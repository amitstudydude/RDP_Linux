
https://github.com/gitpod-io/gitpod.git

sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./*.deb && rm *.deb
sudo apt install thunar icewm firefox xarchiver -y




       -pin=123456 && sudo service chrome-remote-desktop start
bash
sudo echo "sudo service chrome-remote-desktop start && sleep 60 && bash bash.sh" > bash.sh && bash bash.sh



wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/qemu.sh https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/base.7z && bash qemu.sh



sudo wget -O gitpod.7z https://usaupload.com/6sE3/gitpod.7z?download_token=240220cafe4723d0275c9d51d3d9befa99f9d04e3748edca369506bfdfe603d3

sudo useradd -m user && yes user | sudo passwd user && sudo usermod -a -G sudo,adm user 
su user


sudo service chrome-remote-desktop restart
          








 apt remove ungoogled-chromium -y && sudo apt install firefox xarchiver -y






mkdir new && cd new && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/GDrive.sh && bash *.sh

**purgesnapd**

sudo apt-get autopurge snapd

cat <<EOF | sudo tee /etc/apt/preferences.d/nosnap.pref
# To prevent repository packages from triggering the installation of Snap,
# this file forbids snapd from being installed by APT.
# For more information: https://linuxmint-user-guide.readthedocs.io/en/latest/snap.html

Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF







cat >debian.list <<EOF
deb http://deb.debian.org/debian buster main
deb http://deb.debian.org/debian buster-updates main
deb http://deb.debian.org/debian-security buster/updates main
EOF



sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A


cat >chromium.pref <<EOF
# Note: 2 blank lines are required between entries
Package: *
Pin: release a=eoan
Pin-Priority: 500

Package: *
Pin: origin "deb.debian.org"
Pin-Priority: 300

# Pattern includes 'chromium', 'chromium-browser' and similarly
# named dependencies:
Package: chromium*
Pin: origin "deb.debian.org"
Pin-Priority: 700
EOF
sudo rm /etc/apt/sources.list.d/debian.list
sudo cp debian.list /etc/apt/sources.list.d/
sudo rm /etc/apt/preferences.d/chromium.pref
sudo cp chromium.pref /etc/apt/preferences.d/
sudo apt update && sudo apt install chromium



.
