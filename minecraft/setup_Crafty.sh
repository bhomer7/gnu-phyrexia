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

# Create server
cd /var/opt/minecraft/
curl -o server.zip https://drive.google.com/file/d/16Cfwzvr6JXSxZpcX3BY06kQ_RrPl5OR5/view?usp=sharing
unzip server.zip
rm server.zip

# Run Crafty first time
cd /var/opt/minecraft/crafty
sudo su crafty
timeout 60 ./run_crafty.sh > /tmp/crafty.out

# Setup service
systemctl enable crafty.service
