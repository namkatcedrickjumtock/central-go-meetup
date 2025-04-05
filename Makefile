run:
	go run cmd/main.go

lint:
	golangci-lint run ./... --timeout 5m

tidy:
	go mod tidy

test: tidy
	gocov test ./... | gocov report 

coverage:  

build:
	mkdir -p ./bin
	CGO_ENABLED=0 GOOS=linux go build -o bin/api ./cmd/api/api.go