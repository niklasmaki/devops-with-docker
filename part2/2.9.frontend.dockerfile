FROM node:16

EXPOSE 5000

COPY . .

RUN npm install && npm install -g serve

RUN npm run build

CMD serve -s -l 5000 build