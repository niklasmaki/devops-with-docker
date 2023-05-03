FROM docker:git

WORKDIR /usr/src/app

COPY ./3.4.sh .

ENTRYPOINT ["./3.4.sh"]