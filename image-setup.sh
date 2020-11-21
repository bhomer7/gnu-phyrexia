#! /bin/bash

# Update
sudo yum update -y
sudo yum install -y tmux git
sudo amazon-linux-extras install -y docker

# Add bhomer7 user
sudo useradd -G wheel bhomer7
sudo mkdir -p /home/bhomer7/.ssh
sudo cp ~/.ssh/authorized_keys /home/bhomer7/.ssh/authorized_keys
sudo chown -R bhomer7 /home/bhomer7/.ssh

# Add homert765 user
sudo useradd -G wheel homert765
sudo mkdir -p /home/homert765/.ssh
sudo chown -R homert765 /home/homert765/.ssh

# Clone main repo
cd
git clone https://github.com/bhomer7/gnu-phyrexia.git

# Setup docker
sudo systemctl enable docker
sudo service docker start

cd ~/gnu-phyrexia/minecraft
sudo make
cd ../terraria
sudo make

# Setup bash
cd ~/gnu-phyrexia
cp .bash_profile ~/.bash_profile
cp .bash_aliases ~/.bash_aliases
sudo cp .bash_profile /home/bhomer7/.bash_profile
sudo cp .bash_aliases /home/bhomer7/.bash_aliases
sudo chown bhomer7 /home/bhomer7/.bash_profile
sudo chown bhomer7 /home/bhomer7/.bash_aliases

cd