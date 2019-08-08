#!/bin/bash

wget --no-cache https://raw.githubusercontent.com/onezero1010101/rpisurv-config/master/rpisurv-config.sh -O ~/rpisurv/rpisurv-config.sh
chmod +x ~/rpisurv/rpisurv-config.sh

# install is done
echo "Install is complete!"
echo "Please run ~/rpisurv/rpisurv-config.sh"
echo "to complete install and reboot."
