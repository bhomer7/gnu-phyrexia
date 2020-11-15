#! /bin/bash

# Update
sudo yum update -y
sudo yum install tmux
sudo amazon-linux-extras install docker

# Add bhomer7 user
sudo useradd -G wheel bhomer7
sudo su bhomer7
mkdir -p ~/.ssh
exit
sudo cp ~/.ssh/authorized_keys /home/bhomer7/.ssh/authorized_keys
sudo chown bhomer7 /home/bhomer7/.ssh/*


