#! /bin/bash

NC='\033[0m'
BBlack='\033[1;30m'
BRed='\033[1;31m'
BGreen='\033[1;32m'
BYellow='\033[1;33m'
BBlue='\033[1;34m'
BCyan='\033[1;36m'
BWhite='\033[1;37m'

echo -e "\n"

greetings(){
echo -e "Welcome ${BRed} $USER! ${NC}. You are using ${BBlue} ASF SUBDOMAINS FINDER ${NC}\n"

echo -e "Please make sure you have ${BYellow}'assetfinder'${NC} and ${BYellow} 'httprobe'${NC} installed in your system\n"
}


echo -e "${BWhite}███████╗██╗   ██╗██████╗ ██████╗  ██████╗ ███╗   ███╗ █████╗ ██╗███╗   ██╗███████╗      ███████╗██╗███╗   ██╗██████╗ ███████╗██████╗ 
██╔════╝██║   ██║██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔══██╗██║████╗  ██║██╔════╝      ██╔════╝██║████╗  ██║██╔══██╗██╔════╝██╔══██╗
███████╗██║   ██║██████╔╝██║  ██║██║   ██║██╔████╔██║███████║██║██╔██╗ ██║███████╗█████╗█████╗  ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝
╚════██║██║   ██║██╔══██╗██║  ██║██║   ██║██║╚██╔╝██║██╔══██║██║██║╚██╗██║╚════██║╚════╝██╔══╝  ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
███████║╚██████╔╝██████╔╝██████╔╝╚██████╔╝██║ ╚═╝ ██║██║  ██║██║██║ ╚████║███████║      ██║     ██║██║ ╚████║██████╔╝███████╗██║  ██║
╚══════╝ ╚═════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝      ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
                                                                                                                                     ${NC}\n"




greetings

read -p "Enter your Target": dom
echo -e "\n"
echo -e "${BWhite} It may take a while depending on the number of subdomains. Sit back and relax :) ${NC}\n"

assetfinder $dom > subs.txt
cat subs.txt| httprobe > live_subs.txt
sort -u live_subs.txt > sorted_subs.txt

echo -e "=================================================================================\n"
echo -e "${BRed}~~~~~~~~~~~~~~~~~~~~~${NC}${BGreen}This is the Live Subdomains${NC} of ${BCyan}$dom${NC}${BRed}~~~~~~~~~~~~~~~~~~~~~~${NC}\n"
echo -e "=================================================================================\n"

cat sorted_subs.txt

echo -e "=================================================================================\n"

rm subs.txt
rm live_subs.txt

echo -e "${BWhite} Results are saved in sorted_subs.txt${NC}\n"

echo -e "\n"
echo -e "${BRed}||||||||||||||||||||||||||||||||||||${NC}${BGreen}THANK YOU${NC}${BRed}||||||||||||||||||||||||||||||||||||${NC}"
