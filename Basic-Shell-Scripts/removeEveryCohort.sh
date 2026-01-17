#!/bin/bash
# ===============================================================
# Script Name: removeEveryCohort.sh
# Purpose:     Uninstall specified applications and clean up system
# Author:      Rohan Deshpande
# ===============================================================

# Clear out the screen beforehand
clear

echo -e "\n ==============================================================="
echo -e "        System Cleanup & Package Removal Utility"
echo -e "==============================================================="
sleep 2

# ---------------------------------------------------------------
# Start of Uninstall and Cleanup Operations
# ---------------------------------------------------------------

echo -e "\n[+] Updating package list..."
sudo apt update -y

echo -e "\n[+] Removing SQLite3..."
sudo apt remove --purge sqlite3 -y   # Removes SQLite database tool

echo -e "\n[+] Removing FTP utilities (vsftpd, ftp)..."
sudo apt remove --purge vsftpd ftp -y   # Removes FTP server and client

echo -e "\n[+] Removing OpenSSH server..."
sudo apt remove --purge openssh-server -y   # Removes SSH server and configs

echo -e "\n[+] Removing Apache2 web server..."
sudo apt remove --purge apache2 -y   # Removes Apache HTTP server

echo -e "\n[+] Removing GIMP editor..."
sudo apt remove --purge gimp -y   # Removes GNU Image Manipulation Program

echo -e "\n[+] Removing legacy network tools..."
sudo apt remove --purge net-tools -y   # Removes netstat, ifconfig, etc.

echo -e "\n[+] Removing Gedit editor..."
sudo apt remove --purge gedit -y   # Removes GNOME text editor

echo -e "\n[+] Removing process monitors (htop, btop)..."
sudo apt remove --purge htop btop -y   # Removes htop and btop

echo -e "\n[+] Removing Nmap network scanner..."
sudo apt remove --purge nmap -y   # Removes Nmap

echo -e "\n[+] Removing Vim Nox package..."
sudo apt remove --purge vim-nox -y   # Removes Vim with extended features

echo -e "\n[+] Performing system cleanup..."
sudo apt autoremove -y && sudo apt autoclean -y   # Cleans orphaned packages and cache

# ---------------------------------------------------------------
# Completion Message
# ---------------------------------------------------------------
echo -e "\n==============================================================="
echo -e "✅  Cleanup Completed Successfully!"
echo -e "🕒  Completed On : $(date) by $USER on $(hostname)!"
echo -e "===============================================================\n"
