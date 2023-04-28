FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && go clean -cache && \
adduser appuser && chown appuser .

USER appuser

CMD ./server