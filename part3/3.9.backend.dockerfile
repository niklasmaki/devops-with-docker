FROM golang:1.16-alpine3.15 as builder

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 go build

FROM scratch

EXPOSE 8080

COPY --from=builder /usr/src/app/server /usr/src/app/server

ENTRYPOINT ["/usr/src/app/server"]