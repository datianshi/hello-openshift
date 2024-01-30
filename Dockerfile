FROM registry.access.redhat.com/ubi8/go-toolset:1.18.10-1

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./
RUN CGO_ENABLED=0 go build -o /app/hello-world

EXPOSE 8080

CMD ["/app/hello-world"]

