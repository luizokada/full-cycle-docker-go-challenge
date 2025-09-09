FROM golang:1.25 AS builder
WORKDIR /app
COPY ./main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o main ./main.go

FROM scratch
COPY --from=builder /app/main .
ENTRYPOINT ["./main" ]