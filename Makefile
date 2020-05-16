DB_USR = $(shell echo $$DB_USR)
DB_PW = $(shell echo $$DB_PW)
DB_NM = $(shell echo $$DB_NM)
clean-containers:
	docker container prune
clean-images:
	docker image prune
clean-volume:
	docker volume prune
up:
	docker-compose run goose mysql "${DB_USR}:${DB_PW}@tcp(db:3306)/${DB_NM}" up
down:
	docker-compose run goose mysql "${DB_USR}:${DB_PW}@tcp(db:3306)/${DB_NM}" down