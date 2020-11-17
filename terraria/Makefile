
CONTAINER_NAME := terraria_container

build:
	docker build -t terraria .

run:
	docker run -it -p 7777:7777 --name $(CONTAINER_NAME) terraria

interact:
	docker run -it -p 7777:7777 terraria /bin/bash

attach:
	docker start -ia $(CONTAINER_NAME)
