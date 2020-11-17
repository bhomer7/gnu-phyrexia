
FROM debian:latest

# Update and install tools
RUN apt-get update
	&& apt-get -y upgrade
	&& apt-get install -y unzip git

# Setup minecraft and crafty
EXPOSE 8000
EXPOSE 25565

RUN git clone https://gitlab.com/crafty-controller/crafty-installer-linux.git && cd crafty-installer-linux && sudo ./install_crafty.sh

CMD cd /var/opt/minecraft/crafty
	&& source venv/bin/activate
	&& python3 crafty-web/crafty.py