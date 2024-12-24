.PHONY: run
start:
	docker compose down -v
	docker compose rm -f
	docker compose pull
	docker compose up -d --build
remove:
	docker compose down -v
	docker compose rm -f
