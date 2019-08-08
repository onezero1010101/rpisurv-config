#!/bin/bash

PS3='Please choose which config you would like to load: '
options=("Animal" "April" "Stacie" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Animal")
            sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.animal -O /etc/rpisurv.conf
            echo "AnimalSecurityPi" | sudo tee /etc/hostname
            echo "127.0.0.1  AnimalSecurityPi" | sudo tee /etc/hosts
            break
            ;;
        "April")
            sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.april -O /etc/rpisurv.conf
            echo "AprilSecurityPi" | sudo tee /etc/hostname
            echo "127.0.0.1  AprilSecurityPi" | sudo tee /etc/hosts
            break
            ;;
        "Stacie")
            sudo wget https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv.conf.stacie -O /etc/rpisurv.conf
            echo "StacieSecurityPi" | sudo tee /etc/hostname
            echo "127.0.0.1  StacieSecurityPi" | sudo tee /etc/hosts
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
sleep 1
sudo reboot
