FROM node:16-alpine as builder

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build


FROM busybox:1.36

EXPOSE 5000
WORKDIR /static

COPY --from=builder /usr/src/app/build/ /static

RUN adduser -D appuser && chown appuser .
USER appuser

CMD ["busybox", "httpd", "-f", "-v", "-p", "5000"]