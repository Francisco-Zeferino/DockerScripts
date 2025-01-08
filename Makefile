up:
	docker compose -f srcs/docker-compose.yaml up --build

down :
	docker compose -f srcs/docker-compose.yaml down

destroy :
	sudo rm -rf ../data/db-data/* ../data/wp-data/*
	docker system prune -a
	docker volume rm srcs_db-data srcs_wp-data

restart :
	docker restart $$(docker ps -a -q)