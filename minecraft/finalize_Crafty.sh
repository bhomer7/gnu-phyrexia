#! /bin/bash

# Run Crafty first time
cd /var/opt/minecraft/crafty
sudo su crafty
timeout 60 ./run_crafty.sh > /tmp/crafty.out

