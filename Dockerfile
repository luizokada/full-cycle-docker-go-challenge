FROM golang:1.25 AS builder
WORKDIR /app
COPY ./main.go .
RUN go build -o builder/main ./main.go

FROM scratch
COPY --from=builder /app/builder/main .
ENTRYPOINT ["./main" ]