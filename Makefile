DB_USR = $(shell echo $$DB_USR)
DB_PW = $(shell echo $$DB_PW)
DB_NM = $(shell echo $$DB_NM)
default:
	@echo -e "exsample:\n \
	docker-compose run goose up\n \
	docker-compose run goose down\n"
up:
	goose mysql "${DB_USR}:${DB_PW}@tcp(db:3306)/${DB_NM}" up
down:
	goose mysql "${DB_USR}:${DB_PW}@tcp(db:3306)/${DB_NM}" down
