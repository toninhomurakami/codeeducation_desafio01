FROM hello-world:latest

WORKDIR /usr/src/app

COPY go/src/hello-world .

ENTRYPOINT ["/usr/src/app/hello-world"]