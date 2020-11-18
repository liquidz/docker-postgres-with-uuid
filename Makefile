all:
	docker build --rm -t uochan/postgres-with-uuid:12.5 .

run:
	docker run -it --rm \
		-e POSTGRES_PASSWORD=password \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_DB=postgres \
		-p 5432:5432 \
		uochan/postgres-with-uuid:12.5

