
FROM debian:latest

# Update and install tools
RUN su - \
	&& apt-get update \
	&& apt-get -y upgrade \
	&& apt-get install -y unzip git sudo libffi-dev python3 openjdk-11-jre libssl-dev curl

# Setup minecraft and crafty
EXPOSE 8000
EXPOSE 25560
EXPOSE 25561
EXPOSE 25562
EXPOSE 25563
EXPOSE 25564
EXPOSE 25565
EXPOSE 25566
EXPOSE 25567
EXPOSE 25568
EXPOSE 25569
ENV TERM=linux

COPY ./setup_Crafty.sh /tmp/setup_Crafty.sh
RUN chmod +x /tmp/setup_Crafty.sh \
	&& ./tmp/setup_Crafty.sh

COPY ./setup_minecraft.sh /tmp/setup_minecraft.sh
RUN chmod +x /tmp/setup_minecraft.sh \
	&& ./tmp/setup_minecraft.sh

COPY ./finalize_Crafty.sh /tmp/finalize_Crafty.sh
RUN chmod +x /tmp/finalize_Crafty.sh
USER crafty
RUN ./tmp/finalize_Crafty.sh

USER root
CMD cd /var/opt/minecraft/crafty \ 
	&& /bin/bash
