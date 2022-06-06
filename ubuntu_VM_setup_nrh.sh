#!/usr/bin/env bash

#Script for initial setup of Ubuntu VM


sudo apt update

sudo apt-get upgrade

#install required packages
sudo apt-get install atop wget neofetch libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 unzip

#install image j
wget -P ~/Downloads/  https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip ~/Downloads/fiji-linux64.zip -d ~/


#install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh

exit

