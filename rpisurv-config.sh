#!/bin/bash

PS3='Please choose which config you would like to load: '
options=("Animal" "April" "Stacie" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Animal")
            echo "AnimalSecurityPi" | sudo tee /etc/hostname
            sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.animal -O /etc/rpisurv.conf
            ;;
        "April")
            echo "AprilSecurityPi" | sudo tee /etc/hostname
            sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.april -O /etc/rpisurv.conf
            break
            ;;
        "Stacie")
            echo "StacieSecurityPi" | sudo tee /etc/hostname
sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.stacie -O /etc/rpisurv.conf
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
sleep 1
sudo reboot
