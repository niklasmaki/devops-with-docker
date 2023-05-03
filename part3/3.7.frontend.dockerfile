FROM node:16-alpine

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install && npm install -g serve && npm cache clean --force && \
npm run build && adduser -D appuser && chown appuser .

USER appuser

CMD serve -s -l 5000 build