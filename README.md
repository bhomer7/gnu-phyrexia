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

## Minecraft
The minecraft image does not have the world save included. That needs to be copied into the /var/opt/minecraft/server/world directory. The usercache.json file might need to be updated as well.

The minecraft image when run puts you at /var/opt/minecraft/crafty as the root user in bash. From there, you need to run run_crafty.sh to start the minecraft server manager.

## Terraria
The terraria image puts you directly in the TShock CLI.
