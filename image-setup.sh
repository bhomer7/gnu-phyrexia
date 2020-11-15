#! /bin/bash

# Update
sudo yum update -y
sudo yum install -y tmux git
sudo amazon-linux-extras -y install docker

# Add bhomer7 user
sudo useradd -G wheel bhomer7
sudo mkdir -p /home/bhomer7/.ssh
sudo cp ~/.ssh/authorized_keys /home/bhomer7/.ssh/authorized_keys
sudo chown -R bhomer7 /home/bhomer7/.ssh

# Setup docker
sudo service docker start

