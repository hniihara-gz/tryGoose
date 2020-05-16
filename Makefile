clean-containers:
	docker container prune
clean-images:
	docker image prune
clean-volume:
	docker volume prune
up:
	docker-compose run goose mysql "root:password@tcp(db:3306)/local" up
down:
	docker-compose run goose mysql "root:password@tcp(db:3306)/local" down