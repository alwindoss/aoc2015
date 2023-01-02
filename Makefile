GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_LOC=bin
BINARY_NAME=aoc2015
VERSION=0.0.1

all: build
setup:
	$(GOGET) -v ./...
build:
ifeq ($(OS),Windows_NT)
	$(GOBUILD) -o ./$(BINARY_LOC)/$(BINARY_NAME).exe -v
else
	$(GOBUILD) -o ./$(BINARY_LOC)/$(BINARY_NAME) -v 
endif 
test: 
	$(GOTEST) -v ./...
clean: 
	$(GOCLEAN)
	rm -rf $(BINARY_LOC)
run: clean build
ifeq ($(OS),Windows_NT)
	./$(BINARY_LOC)/$(BINARY_NAME).exe
else
	./$(BINARY_LOC)/$(BINARY_NAME)
endif 
