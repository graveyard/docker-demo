FROM golang:1.5

RUN mkdir -p /go/src/github.com/Clever/docker-demo
ADD . /go/src/github.com/Clever/docker-demo

WORKDIR /go/src/github.com/Clever/docker-demo

RUN go install github.com/Clever/docker-demo
RUN go build -o /usr/local/bin/docker-demo github.com/Clever/docker-demo

CMD "./docker-demo"
