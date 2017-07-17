FROM ubuntu:16.04

RUN apt-get update

RUN mkdir /code
WORKDIR /code

COPY atfeed-httpserver code/atfeed-httpserver
COPY atfeed-httpserver/bin/libActiveTickServerAPI.so /usr/lib

CMD ["sh", "code/atfeed-httpserver/bin/init.sh"]
