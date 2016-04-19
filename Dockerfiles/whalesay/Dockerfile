FROM docker/whalesay:latest
MAINTAINER wolfitem <wei.wu86@hotmail.com>


RUN apt-get -y update && apt-get install -y fortunes

CMD /usr/games/fortune -a | cowboy