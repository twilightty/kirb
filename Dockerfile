FROM golang:1.23rc2-alpine3.19

RUN mkdir -p /build

RUN apk add bash

COPY . /build


WORKDIR /build

RUN go build -o kirb.tmp

RUN go install

RUN cat /build/misc/welcome.txt

ENTRYPOINT ["/build/scripts/welcome.sh"]