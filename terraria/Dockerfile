
#docker run -it mono:latest bash

FROM mono:latest

# Update and install tools
RUN apt update && apt upgrade -y \ 

# Start Tshock
EXPOSE 7777
ENV BUILD_MODE=Release
ENV TERRARIA_ROOT=/local/terraria/TShock/
COPY ./setup_TShock.sh /tmp/setup_TShock.sh

RUN chmod +x /tmp/setup_TShock.sh \
	&& ./tmp/setup_TShock.sh
