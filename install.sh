#!/bin/bash

# update apt
sudo apt update

# upgrade pi
#sudo apt upgrade -y

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

# run config install per site
#curl https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/install-config.sh | bash
wget --no-cache https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv-config.sh -O ~/rpisurv/rpisurv-config.sh
chmod +x ~/rpisurv/rpisurv-config.sh

# install is done
echo "Install is complete!"
echo "Please run ~/rpisurv/rpisurv-config.sh"
echo "to complete install then reboot."
