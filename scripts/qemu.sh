#!/bin/bash

# Variables (customize these as needed)
VM_NAME="UbuntuVM"  # Name of the virtual machine
ISO_PATH="./ubuntu.iso"  # Path to the ISO (ensure this file exists)
RAM="4096"  # 2GB of RAM for the VM
CPU="8"     # 2 CPU cores
DISK_SIZE="20G"  # Virtual disk size (20GB)
VIRTUALBOX_BINARY="virtualbox"  # Command for VirtualBox (could be virtualbox or VBoxManage)

# Check if VirtualBox is installed, and install it if necessary
install_virtualbox() {
    echo "Checking if VirtualBox is installed..."
    if ! command -v $VIRTUALBOX_BINARY &> /dev/null; then
        echo "VirtualBox not found. Installing VirtualBox..."
        sudo apt update
        sudo apt install -y virtualbox
    else
        echo "VirtualBox is already installed."
    fi
}

# Function to create and configure a new virtual machine
create_vm() {
    echo "Creating virtual machine '$VM_NAME'..."

    # Create the VM
    VBoxManage createvm --name "$VM_NAME" --register
    
    # Set up VM settings (RAM, CPUs, etc.)
    VBoxManage modifyvm "$VM_NAME" --memory "$RAM" --cpus "$CPU" --ostype Ubuntu_64 --vram 128
    
    # Create a virtual disk for the VM
    VBoxManage createhd --filename "${VM_NAME}.vdi" --size ${DISK_SIZE//G/000}  # Disk size in MB
    
    # Set up the storage controller (SATA)
    VBoxManage storagectl "$VM_NAME" --name "SATA Controller" --add sata --controller IntelAHCI
    
    # Attach the virtual disk
    VBoxManage storageattach "$VM_NAME" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "${VM_NAME}.vdi"
    
    # Attach the ISO for OS installation (Ubuntu ISO)
    VBoxManage storageattach "$VM_NAME" --storagectl "SATA Controller" --port 1 --device 0 --type dvddrive --medium "$ISO_PATH"
    
    echo "VM '$VM_NAME' created successfully!"
}

# Start the VM
start_vm() {
    echo "Starting virtual machine '$VM_NAME'..."
    VBoxManage startvm "$VM_NAME" --type gui
}

# Main function to execute the script
main() {
    # Step 1: Install VirtualBox if not installed
    install_virtualbox

    # Step 2: Create the virtual machine
    create_vm

    # Step 3: Start the VM
    start_vm
}

# Run the main function
main
