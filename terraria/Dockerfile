
#docker run -it mono:latest bash

FROM mono:latest

# Update and install tools
RUN apt update && apt upgrade -y && apt install -y unzip

# Start Tshock
EXPOSE 7777
ENV TERRARIA_ROOT=/local/terraria/
COPY ./setup_TShock.sh /tmp/setup_TShock.sh

RUN chmod +x /tmp/setup_TShock.sh \
	&& ./tmp/setup_TShock.sh

CMD cd $TERRARIA_ROOT/TShock \
	mono $TERRARIA_ROOT/TShock/TerrariaServer.exe
