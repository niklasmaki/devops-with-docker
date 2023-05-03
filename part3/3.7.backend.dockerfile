FROM golang:1.16-alpine3.15

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && go clean -cache && \
adduser -D appuser && chown appuser .

USER appuser

CMD ./server