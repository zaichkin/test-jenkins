FROM golang:latest

WORKDIR /app
COPY ./ ./

RUN go build -o /jenks .
CMD ["/jenks"]