#!/bin/bash

# update apt
sudo apt update

# install git
sudo apt install git -y

# git clone repo into /root/rpisurv
#sudo git clone https://github.com/SvenVD/rpisurv /root/rpisurv
git clone https://github.com/SvenVD/rpisurv 

# change gpu_mem=512 in your /boot/config.txt
#sudo sed -i 's/gpu_mem=??/gpu_mem=512/g' /boot/config.txt
sudo echo "gpu_mem=512" >> /boot/config.txt

# disable overscan
sudo sed -i 's/#disable_overscan=1/disable_overscan=1/g' /boot/config.txt
# rpisurv install
sudo ./install.sh

