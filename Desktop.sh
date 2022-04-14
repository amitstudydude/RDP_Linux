name: main
on: 
  workflow_dispatch:
   inputs:
     auth:
        description: 'Code'
        required: true
        default:
  
defaults:
  run:
    shell: bash
jobs:
  build:
    runs-on: ubuntu-20.04
    steps:
    - name: Creating User to Login
      run: |
         sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd
     
      # To Install different Environment replace their commands. by default it Install 'Ubuntu'
      
      # Ubuntu default will take upto 6-7 min
      # sudo apt update && sudo apt install ubuntu-desktop
      
      # For UKUI (Awesome UI) (4-5 min)
      # sudo add-apt-repository ppa:ubuntukylin-members/ukui -y && sudo apt update && sudo apt install ukui-desktop-environment
      
      # For LXDE (4 min)
      # sudo apt update && sudo apt install lxqt sddm -y
      
      # For Mate (5 min)
      # sudo apt update && sudo apt install ubuntu-mate-desktop -y
      
      # For Budgie (8 min)
      # sudo apt update && sudo apt install ubuntu-budgie-desktop -y
      
      # For KDE Plasma (10 min)
      # sudo apt update && sudo apt install tasksel && sudo tasksel install kubuntu-desktop
      
      # For Deepin (3-4 min)
      # sudo apt update && sudo add-apt-repository ppa:ubuntudde-dev/stable -y && sudo apt install ubuntudde-dde
      
      # For XFCE (2-3 min) Lite weight
      # sudo apt update && sudo apt install xfce4 && sudo chmod 777 /home/Area69Lab/
      # sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

    - name: Installing Desktop Environment (wait for 10 min)
      run: 
           
           wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
           sudo dpkg --install chrome-remote-desktop_current_amd64.deb
           sudo apt install --assume-yes --fix-broken
            
            
           wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
           sudo dpkg --install google-chrome-stable_current_amd64.deb
           sudo apt install --assume-yes --fix-broken || sudo adduser user chrome-remote-desktop
           sudo apt-get install xfce4 xfce4-goodies xfce4-terminal  firefox -y
           sudo rm *
    
            
            
            
    - name: Start Chrome Remote Desktop
      run: |
          
           ${{ github.event.inputs.auth }} -pin=123456
           
    
           '
    - name: Create loop
      run: |
          
           sudo apt update && sudo apt upgrade -y && sudo apt install ubuntu-desktop
           sleep 1d
