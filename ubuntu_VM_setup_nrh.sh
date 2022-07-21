#!/usr/bin/env bash

#Script for initial setup of Ubuntu VM's (XFCE). Sets theme and installs Anaconda, ImageJ, Octave, Atom, RStudio and Github
#Author: Nick Howell


#change the XFCE theme
xfconf-query -c xsettings -p /Net/ThemeName -s "Greybird-dark"

#update and upgrade
sudo apt update
sudo apt upgrade

#install required packages
sudo apt install atop htop wget neofetch libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 unzip gdebi-core vim-gt3 r-base octave

#install atom
sudo snap install atom --classic

#install image j
wget -P ~/Downloads/  https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip ~/Downloads/fiji-linux64.zip -d ~/

#install github desktop
wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
sudo gdebi GitHubDesktop-linux-2.9.3-linux3.deb

#install RStudio
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2022.02.3-492-amd64.deb
sudo gdebi rstudio-server-2022.02.3-492-amd64.deb

#install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh

#close current terminal to complete anaconda install and open a fresh session

neofetch
sleep 5

gnome-terminal

exit
