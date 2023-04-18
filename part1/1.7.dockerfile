FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt update && apt install -y curl

COPY test.sh .

CMD ./test.sh
