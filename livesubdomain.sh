#! /bin/bash

Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
NC='\033[0m'
BBlack='\033[1;30m'
BRed='\033[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'
BPurple='\033[1;35m'
BCyan='\033[1;36m'
BWhite='\033[1;37m'

greetings(){
echo -e "Welcome ${BGreen} $USER! ${NC}. You are using ${BBlue} ASF SUBDOMAINS FINDER ${NC}\n"

echo -e "Please make sure you have ${BYellow}'assetfinder'${NC} and ${BYellow} 'httprobe'${NC} installed in your system\n"
}


echo -e "${BCyan}

 _       _____ _    _ _______    _    _     _ ______  _____    _____  ______         _____ ______     _       _______ _____ ______  _____   _______ ______  
| |     (_____) |  | (_______)  | |  | |   | (____  \(____ \  / ___ \|  ___ \   /\  (_____)  ___ \   | |     (_______|_____)  ___ \(____ \ (_______|_____ \ 
| |        _  | |  | |_____ ___  \ \ | |   | |____)  )_   \ \| |   | | | _ | | /  \    _  | |   | |   \ \ ___ _____     _  | |   | |_   \ \ _____   _____) )
| |       | |  \ \/ /|  ___|___)  \ \| |   | |  __  (| |   | | |   | | || || |/ /\ \  | | | |   | |    \ (___)  ___)   | | | |   | | |   | |  ___) (_____ ( 
| |_____ _| |_  \  / | |_____ _____) ) |___| | |__)  ) |__/ /| |___| | || || | |__| |_| |_| |   | |_____) )  | |      _| |_| |   | | |__/ /| |_____      | |
|_______|_____)  \/  |_______|______/ \______|______/|_____/  \_____/|_||_||_|______(_____)_|   |_(______/   |_|     (_____)_|   |_|_____/ |_______)     |_|
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            ${NC}\n"




greetings

read -p "Enter your Target": dom
echo -e "\n"
echo -e "${BWhite} It may take a while depending on the number of subdomains. Sit back and relax :) ${NC}\n"

assetfinder $dom > subs.txt
cat subs.txt| httprobe > live_subs.txt
sort -u live_subs.txt > sorted_subs.txt

echo -e "=================================================================================\n"
echo -e "${BRed}This Is Your Subdomains${NC}\n"
echo -e "=================================================================================\n"

cat sorted_subs.txt

echo -e "\n"
echo -e "${BGreen} THANK YOU${NC}"
