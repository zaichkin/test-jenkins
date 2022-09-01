PROJECT = jenks

run:
	docker build -t $(PROJECT) .
	docker run --rm -v $(shell pwd):/app -w /app $(PROJECT)

test:
	docker build -t $(PROJECT) .
	go test ./... -v