FROM golang:latest

ENV GOPATH 
ENV PATH $GOPATH/bin:/usr/local/bin:$PATH

RUN mkdir -p $GOPATH/src
WORKDIR $GOPATH/src

COPY . .

RUN go mod download
RUN go build -o main.go

EXPOSE 80

CMD ["/src/myapp"]
