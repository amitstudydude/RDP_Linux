name: 3
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
           sudo useradd -m runner && sudo adduser runner sudo && echo 'runner:runner' | sudo chpasswd
     
      
    - name: Installing Desktop Environment (wait for 10 min)
      run: |
           
           wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
          
           sudo apt install --assume-yes --fix-broken ./*.deb 
           sudo apt-get install xfce4 xfce4-goodies xfce4-terminal  firefox -y
           sudo rm * 
    
            
            
            
    - name: Start Chrome Remote Desktop
      run: |
           ${{ github.event.inputs.auth }} -pin=123456
           sudo apt-get install xfce4 xfce4-goodies xfce4-terminal  firefox -y && sudo apt update && sudo apt upgrade -y
           sudo apt update && sudo apt upgrade -y && sudo apt install ubuntu-desktop gnome -y
           sleep 1d
          
            
    
           
