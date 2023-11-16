#!/bin/bash
# Variables for colors(text)
RED="\033[31m"
Green="\033[0;32m"
Yellow="\033[0;33m"
Cyan="\033[0;36m"
NC="\033[0m"



echo -e "${Green}The script will install NeoVim... ${NC}"
sleep 3
echo = ""



# NeoVim link from github
link=https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz

# Add bin to PATH
# PATH=$PATH:/home/$USER/.local/bin


cd /home/$USER/.local/bin

echo = ""
echo "Downloading..."
wget -c $link

echo = ""
echo "Extracting..."
tar xzvf nvim-linux64.tar.gz

rm -fr nvim-linux64

ln -s ./nvim-linux64/bin/nvim ./nvim


echo = ""
echo -e "${Green}installation complete!${NC}"
echo " "
