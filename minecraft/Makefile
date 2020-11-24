
CONTAINER_NAME := minecraft_container
GAME := minecraft
PORTS := -p 25565:25565 -p 25560:8000

build:
	docker build -t $(GAME) .

run:
	docker run -it $(PORTS) --name $(CONTAINER_NAME) $(GAME)

interact:
	docker run -it $(PORTS) $(GAME) /bin/bash

start:
	docker start -ia $(CONTAINER_NAME)

attach:
	docker exec -it $(CONTAINER_NAME) bash

clean:
	docker rm $(CONTAINER_NAME) && docker rmi $(GAME)
