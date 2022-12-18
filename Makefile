.PHONY := all init start cleandir clean
.DEFAULT_GOAL := start

all: cleandir init start

clean: stop cleandir

init:
	@echo "Initialize Directory"
	mkdir .docker
	mkdir .docker/nginx
	mkdir .docker/postgres
	mkdir .docker/pgadmin
	chown -R 5050:5050 .docker/pgadmin

start:
	@echo "Starting Docker Container"
	docker compose up -d

cleandir:
	@echo "Cleaning Directory"
	rm -rf .docker

stop:
	@echo "Stopping Docker Container"
	docker compose down
