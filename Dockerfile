#dockerfile
FROM golang:latest

COPY src /src/myapp
RUN go mod init

RUN cd /src/myapp && \
    go build -o myapp

EXPOSE 80

CMD ["./myapp"]
