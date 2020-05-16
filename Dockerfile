#Builder
FROM golang:latest as builder
ENV GO111MODULE=on CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN go get -u github.com/pressly/goose/cmd/goose

#Runer
FROM alpine
WORKDIR /app
COPY --from=builder /go/bin/goose /usr/bin/goose
RUN apk add make gcc g++
ENTRYPOINT ["make"]