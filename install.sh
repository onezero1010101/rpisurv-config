#!/bin/bash

# update apt
sudo apt update

# upgrade pi
sudo apt upgrade -y

# install git
sudo apt install git -y

# git clone repo into /root/rpisurv
#sudo git clone https://github.com/SvenVD/rpisurv /root/rpisurv
git clone https://github.com/SvenVD/rpisurv 

# change gpu_mem=512 in your /boot/config.txt
#sudo sed -i 's/gpu_mem=??/gpu_mem=512/g' /boot/config.txt
echo "gpu_mem=512" | sudo tee -a /boot/config.txt

# disable overscan
sudo sed -i 's/#disable_overscan=1/disable_overscan=1/g' /boot/config.txt

# rpisurv install
cd ~/rpisurv
echo -ne '\n' | sudo ./install.sh

