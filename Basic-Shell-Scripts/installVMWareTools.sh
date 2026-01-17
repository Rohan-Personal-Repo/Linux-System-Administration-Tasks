#!/bin/bash

# Simple script to install VMware Tools on a fresh Ubuntu install

echo -e "\n🔧 Starting VMware Tools installation..."

echo -e "\n📦 Update system packages:"
sudo apt-get update

# 
echo -e "\n💿 Install VMware Tools package:"
sudo apt-get install open-vm-tools-desktop -y

# Completion message
echo -e "\n🕒  Completed On : $(date) by $USER on $(hostname)!"

# Wait 2 seconds before rebooting
echo -e "\n⏳ Rebooting in 2 seconds..."
sleep 2

# Reboot system
echo -e "\n🔁 Running: sudo reboot"
sudo reboot