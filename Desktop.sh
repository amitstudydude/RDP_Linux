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
           sudo useradd -m ubuntu && sudo adduser ubuntu sudo && echo 'ubuntu:ubuntu' | sudo chpasswd
     
      
    - name: Installing Desktop Environment (wait for 10 min)
      run: 
           
           wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
          
           sudo apt install --assume-yes --fix-broken ./*.deb 
           sudo apt-get install xfce4 xfce4-goodies xfce4-terminal  firefox -y
           sudo rm * 
    
            
            
            
    - name: Start Chrome Remote Desktop
      run: |
           sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd || sudo adduser user chrome-remote-desktop
           ${{ github.event.inputs.auth }} -pin=123456
           sudo apt-get install xfce4 xfce4-goodies xfce4-terminal  firefox -y && sudo apt update && sudo apt upgrade -y
           sudo apt update && sudo apt upgrade -y && sudo apt install ubuntu-desktop gnome -y
           sleep 1d
          
            
    
           
