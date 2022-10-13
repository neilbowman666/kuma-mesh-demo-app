FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go env -w GO111MODULE=on && \
    go env -w GOPROXY=https://goproxy.cn,direct && \
    go mod download

COPY *.go ./

RUN go build -o /app/demo-app

EXPOSE 8080

CMD [ "/app/demo-app" ]
