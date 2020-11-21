
FROM debian:latest

# Update and install tools
RUN su - \
	&& apt-get update \
	&& apt-get -y upgrade \
	&& apt-get install -y unzip git sudo libffi-dev python3 openjdk-11-jre libssl-dev curl

# Setup minecraft and crafty
EXPOSE 8000
EXPOSE 25565
ENV TERM=linux

COPY ./setup_Crafty.sh /tmp/setup_Crafty.sh
RUN chmod +x /tmp/setup_Crafty.sh \
	&& ./tmp/setup_Crafty.sh

COPY ./setup_minecraft.sh /tmp/setup_minecraft.sh
RUN chmod +x /tmp/setup_minecraft.sh \
	&& ./tmp/setup_minecraft.sh

COPY ./finalize_Crafty.sh /tmp/finalize_Crafty.sh
RUN chmod +x /tmp/finalize_Crafty.sh \
	&& ./tmp/finalize_Crafty.sh

CMD cd /var/opt/minecraft/crafty \
	&& sudo su crafty \
	&& /bin/bash
#	&& ./run_crafty.sh
