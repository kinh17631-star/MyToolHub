#!/bin/bash
# PhoneInfo Pro Installer - Aarif Saifi

clear
echo -e "\033[1;32m[+] Installing Dependencies... Please Wait\033[0m"
sleep 2

# For Termux/APT
if command -v apt &> /dev/null; then
    apt update && apt upgrade -y
    pkg install git termux-api -y
# For iSH/APK
elif command -v apk &> /dev/null; then
    apk update && apk upgrade
    apk add git bash
fi

chmod +x phoneinfo.sh
clear
echo -e "\033[1;36m[✔] Setup Complete! Run 'bash phoneinfo.sh' to start.\033[0m"
