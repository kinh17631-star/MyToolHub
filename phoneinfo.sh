#!/bin/bash
clear

# Multi-Color Variables
R='\033[0;31m'; G='\033[0;32m'; Y='\033[1;33m'; B='\033[0;34m'; P='\033[0;35m'; C='\033[0;36m'; W='\033[1;37m'; NC='\033[0m'

# Colorful Rainbow Banner
echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${Y}  __  __   _______ ____  ____  _      _   _ _   _ ____  "
echo -e "${G} |  \/  | |__   __/ __ \|  _ \| |    | | | | | | |  _ \ "
echo -e "${C} | \  / |    | | | |  | | |_) | |    | |_| | | | | |_) |"
echo -e "${B} | |\/| |    | | | |  | |  _ <| |    |  _  | | | |  _ < "
echo -e "${P} | |  | |    | | | |__| | |_) | |____| | | | |_| | |_) |"
echo -e "${R} |_|  |_|    |_|  \____/|____/|______|_| |_|\___/|____/ "
echo -e "${W}            CREATED BY: AARIF SAIFI"
echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${Y}[+] DETECTING DEVICE INFORMATION...${NC}"

# Device Detection Logic
if [ -d "/etc/apk" ]; then
    DEVICE="iPhone (iSH Shell)"
    OS_VER=$(uname -r | cut -d- -f1) # iPhone/iSH Version
else
    DEVICE="Android (Termux)"
    OS_VER=$(getprop ro.build.version.release 2>/dev/null || echo "Linux Standard")
fi

# Displaying Details
echo -e "${B} OWNER       :${NC} ${W}Aarif Saifi${NC}"
echo -e "${B} DEVICE      :${NC} ${G}${DEVICE}${NC}"
echo -e "${B} VERSION     :${NC} ${Y}${OS_VER}${NC}"
echo -e "${B} ARCH        :${NC} ${W}$(uname -m)${NC}"
echo -e "${B} HOST        :${NC} ${W}$(hostname)${NC}"
echo -e "${B} UPTIME      :${NC} ${W}$(uptime | awk '{print $3,$4}' | sed 's/,//')${NC}"
echo -e "${B} WEBSITE     :${NC} ${C}https://kinh17631-star.github.io${NC}"
echo -e "${R}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
