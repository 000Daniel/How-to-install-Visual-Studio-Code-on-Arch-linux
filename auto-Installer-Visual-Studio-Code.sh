#!/usr/bin/bash

userName=*

PROMPT_COMMAND='echo -en "\033]0;Auto Visual Studio Code installer\a"'
BO='\033[0;33m'
NC='\033[0m'
RED='\033[0;31m'
LG='\033[1;32m'
PUR='\033[0;35m'
DefDir=$(pwd)

echo -e "${BO}=====================[${RED}Installing dependencies...${BO}]=====================${NC}"
sudo pacman -S dotnet-sdk git
echo -e "${BO}===================[${RED}Downloading AUR dependencies...${BO}]==================${NC}"
cd /home/"$userName"/Downloads/
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin/
makepkg
sudo pacman -U visual-studio-code-bin-*
cd ..
echo -e "${BO}====================[${RED}Deleting AUR dependencies...${BO}]====================${NC}"
rm -rf visual-studio-code-bin/
echo -e "${BO}======================[${RED}Copying Settings File...${BO}]======================${NC}"
cd "$DefDir"
cp settings.json /home/"$userName"/.config/Code/User/
echo -e "${LG}All Complete!"
echo -e "${PUR}created by https://github.com/000Daniel${NC}"