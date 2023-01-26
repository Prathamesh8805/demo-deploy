FROM golang:latest

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p $GOPATH/src
WORKDIR $GOPATH/src

COPY . .

RUN go mod download
RUN go build -o main.go

EXPOSE 8080

CMD ["/src/myapp"]
