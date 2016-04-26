FROM golang:1.5

RUN mkdir -p /go/src/github.com/Clever/docker_demo
ADD . /go/src/github.com/Clever/docker_demo

WORKDIR /go/src/github.com/Clever/docker_demo

RUN go install github.com/Clever/docker_demo
RUN go build -o /usr/local/bin/stoked github.com/Clever/docker_demo

CMD "docker-demo"
