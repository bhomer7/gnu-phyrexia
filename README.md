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
- connect the minecraft server to crafty
- create the minecraft save