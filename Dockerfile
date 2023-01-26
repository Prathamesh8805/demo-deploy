FROM golang:latest

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p $GOPATH/src/myapp
WORKDIR $GOPATH/src/myapp

COPY . .

RUN go mod download
RUN go build -o myapp

EXPOSE 8080

CMD ["/go/src/myapp/myapp"]
