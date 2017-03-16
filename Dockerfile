FROM resin/rpi-raspbian:jessie

RUN apt-get update
RUN apt-get install wget iproute

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

CMD ["mydns_run"]
