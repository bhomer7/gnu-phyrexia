
CONTAINER_NAME := minecraft_container
PORTS := -p 25565:25565 -p 25560:8000

build:
	docker build -t minecraft .

run:
	docker run -it $(PORTS) --name $(CONTAINER_NAME) minecraft

interact:
	docker run -it $(PORTS) minecraft /bin/bash
	
attach:
	docker start -ia $(CONTAINER_NAME)
