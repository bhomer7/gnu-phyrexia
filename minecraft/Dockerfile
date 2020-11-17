
FROM debian:latest

# Update and install tools
RUN su - \
	&& apt-get update \
	&& apt-get -y upgrade \
	&& apt-get install -y unzip git sudo

# Setup minecraft and crafty
EXPOSE 8000
EXPOSE 25565
ENV TERM=linux

RUN git clone https://gitlab.com/crafty-controller/crafty-installer-linux.git \
	&& cd crafty-installer-linux \
	&& (printf "y\ny\ny\nmaster\ny\n") | ./install_crafty.sh

CMD cd /var/opt/minecraft/crafty \
	&& sudo su crafty \
	&& ./run_crafty.sh
