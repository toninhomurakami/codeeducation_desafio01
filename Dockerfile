FROM golang:1.12-alpine AS compile
RUN go get -d -v ./...
RUN go install -v ./...

WORKDIR /usr/src/app
COPY go/src/hello-world.go .
RUN go build -o /usr/src/app/hello-world -ldflags="-s -w" /usr/src/app/hello-world.go


FROM hello-world:latest
WORKDIR /usr/src/app
COPY --from=compile /usr/src/app .

ENTRYPOINT ["/usr/src/app/hello-world"]