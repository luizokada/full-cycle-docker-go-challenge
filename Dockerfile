FROM golang:1.25 as builder

WORKDIR /usr/src/app

COPY . .

RUN go build ./main.go


FROM alpine:latest
COPY --from=builder /usr/src/app/main .
ENTRYPOINT [ "./main" ]