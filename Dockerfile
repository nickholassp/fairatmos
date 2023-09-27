FROM golang:1.21

WORKDIR /app

COPY go/* ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /wiki

EXPOSE 8080

CMD ["/wiki"]