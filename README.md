# gnu-phyrexia
Docker images for server I run in AWS.

To run:
```
curl -o setup.sh https://raw.githubusercontent.com/bhomer7/gnu-phyrexia/main/image-setup.sh && chmod +x setup.sh && ./setup.sh
```

After running the initial setup will need to:
- create a tmux session running the different docker containers
- set user passwords
- set ssh key for homert765
- create the minecraft save
- connect the minecraft server to crafty
- configure the terraria server after launch

Is currently running on a c6g ec2 instance.

Needs the following open ports:
- 7777 for terraria
- 25560 for crafty minecraft manager
- 25565 for minecraft server