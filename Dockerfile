from golang:buster as builder

WORKDIR /app
ADD . .
RUN go build -o /usr/local/bin/edge-api

EXPOSE 8080
CMD ["/usr/local/bin/edge-api"]