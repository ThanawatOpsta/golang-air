FROM golang:1.18

ENV GOPATH /go
ENV GO111MODULE on

COPY . /go/src/github.com/cosmtrek/air
WORKDIR /go/src/github.com/cosmtrek/airls
RUN make ci && make install

#run useradd -u 1000 linux-user
#run go mod init test3
#run go get -u github.com/gofiber/fiber/v2

ENTRYPOINT ["/go/bin/air"]