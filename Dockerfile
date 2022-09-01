FROM golang:latest

WORKDIR /app
COPY ./ ./

RUN chmod +x ./unit_test.sh
RUN ./unit_test.sh

RUN go build -o /jenks .
CMD ["/jenks"]