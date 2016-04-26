SHELL := /bin/bash

all: run

run: build
	./docker-demo

build: vendor
	go build

vendor:
	godep save ./...
