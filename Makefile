SHELL := /bin/bash
HELLO_MESSAGE ?= Hello
export HELLO_MESSAGE

all: run

run: build
	./docker-demo

build: vendor
	go build

vendor:
	godep save ./...
