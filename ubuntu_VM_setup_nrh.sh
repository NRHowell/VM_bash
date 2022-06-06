#!/usr/bin/env bash

#Script for initial setup of Ubuntu VM's with Anaconda, ImageJ and Github


sudo apt update

sudo apt-get upgrade

#install required packages
sudo apt-get install atop wget neofetch libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 unzip

#install image j
wget -P ~/Downloads/  https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip ~/Downloads/fiji-linux64.zip -d ~/

#install github desktop
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
sudo gdebi GitHubDesktop-linux-2.9.3-linux3.deb

#install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh

exit

