#FROM golang:1.21 AS builder
FROM golang:1.24.0-bookworm
#FROM golang:1.20.4-alpine3.17
#FROM golang: .1.24.0-bookworm
WORKDIR  /app


#COPY go.mod go.sum ./

#RUN go mod download

COPY . .



#RUN go mod tidy
#RUN go mod vendor

RUN go build -o api .
#RUN go build -v -x -o api .




EXPOSE 8080
CMD ["./api"]