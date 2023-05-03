FROM node:16

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install && npm install -g serve

RUN npm run build

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD serve -s -l 5000 build