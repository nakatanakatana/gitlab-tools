.PHONY: build test lint clean

BINARY_NAME=sarif-to-codequality
BUILD_DIR=dist

build:
	mkdir -p $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(BINARY_NAME) ./cmd/sarif-to-codequality

test:
	go test -v ./...

lint:
	golangci-lint run ./...

clean:
	rm -rf $(BUILD_DIR)
