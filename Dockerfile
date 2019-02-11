FROM golang:1.11.5-alpine

MAINTAINER Jiaming Hu

ENV SOURCES /go/src/github.com/horis233/Cloud-Native-Go/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install -a

ENTRYPOINT cloud-native-go
EXPOSE 8080