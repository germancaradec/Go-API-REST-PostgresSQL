
BINARY=ms-api
VERSION=0.1.0
LDFLAGS=-ldflags "-X main.Version=$(VERSION)"

#go tool commands
build:
	go build $(LDFLAGS) -o $(BINARY) main.go

run:
	
	@go run main.go

## tests
test:
	@go test ./...

## docker compose
up:
	docker-compose up --build
down:
	docker-compose down --remove-orphans
