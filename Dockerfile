# syntax=docker/dockerfile:1

FROM golang:alpine
LABEL maintainer="Sandile"

# Create destination for COPY
RUN mkdir /app

# Set destination for COPY
WORKDIR /app
COPY main.go /app

# Download Go modules
COPY go.mod /app
RUN go mod download

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /helloworld
# RUN go build -o helloworld .
CMD ["/helloworld"]


