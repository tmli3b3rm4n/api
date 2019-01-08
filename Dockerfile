FROM golang:1.8

WORKDIR $HOME/go/src/github.com/thatleague/api
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]
