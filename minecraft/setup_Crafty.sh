#! /bin/bash

# Install crafty
cd /tmp
git clone https://gitlab.com/crafty-controller/crafty-installer-linux.git
cd crafty-installer-linux
(printf "y\ny\ny\nmaster\ny\n") | ./install_crafty.sh

# Patch crafty to work in AWS
cd /var/opt/minecraft/crafty/crafty-web/app/classes/
sed -i 's/psutil.cpu_freq...0./1000/' multiserv.py
sed -i 's/psutil.cpu_freq...2./3100/' multiserv.py

cd /var/opt/minecraft/crafty

# Setup service
#systemctl enable crafty.service
