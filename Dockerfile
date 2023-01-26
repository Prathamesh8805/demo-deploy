FROM golang:latest

COPY src /src/myapp

RUN cd /src/myapp && \
    go build -o myapp

EXPOSE 80

CMD ["./myapp"]
