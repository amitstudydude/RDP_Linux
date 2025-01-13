#!/bin/bash

# Variables (modify as needed)
VM_NAME="MyVM"
VM_DISK="./${VM_NAME}_disk.qcow2"  # Virtual disk in the current directory
ISO_PATH="./ubuntu.iso"  # Change to the relative path for the ISO
RAM="1024"  # 1GB RAM for the VM
CPU="2"     # Number of CPU cores
DISK_SIZE="20G"  # Virtual disk size
QEMU_BINARY="qemu-system-x86_64"  # Change if using a different architecture

# Function to install QEMU
install_qemu() {
    echo "Checking if QEMU is installed..."
    if ! command -v qemu-system-x86_64 &> /dev/null; then
        echo "QEMU not found. Installing QEMU..."
        if [[ "$(uname)" == "Linux" ]]; then
            if [[ -f /etc/debian_version ]]; then
                # For Debian/Ubuntu-based systems
                sudo apt update
                sudo apt install -y qemu qemu-kvm qemu-system
            elif [[ -f /etc/redhat-release ]]; then
                # For RHEL/CentOS/Fedora systems
                sudo dnf install -y qemu qemu-kvm
            else
                echo "Unsupported Linux distribution."
                exit 1
            fi
        elif [[ "$(uname)" == "Darwin" ]]; then
            # For macOS
            brew install qemu
        else
            echo "Unsupported OS. Please install QEMU manually."
            exit 1
        fi
    else
        echo "QEMU is already installed."
    fi
}

# Step 1: Install QEMU if not installed
install_qemu

# Step 2: Create the virtual disk image
echo "Creating virtual disk image..."
qemu-img create -f qcow2 "$VM_DISK" "$DISK_SIZE"

# Step 3: Start the VM and install OS from ISO
echo "Starting the virtual machine..."
$QEMU_BINARY \
  -m "$RAM" \
  -cpu host \
  -smp "$CPU" \
  -drive file="$VM_DISK",format=qcow2 \
  -cdrom "$ISO_PATH" \
  -boot d \
  -net nic \
  -net user \
  -display gtk \
  -enable-kvm

# Optional: If you want to change `-display` to `sdl` or other options, modify it above.
