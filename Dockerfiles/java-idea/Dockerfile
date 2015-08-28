FROM wolfitem/baseimage:desktop
MAINTAINER wolfitem <wei.wu86@hotmail.com>
USER root

RUN apt-get update

RUN curl 'http://download-cf.jetbrains.com/idea/ideaIC-14.1.4.tar.gz' > /tmp/idea.tar.gz && cd /opt && tar -zxvf /tmp/idea.tar.gz && rm /tmp/idea.tar.gz

# Install prerequisites
RUN apt-get install -y openjdk-7-jdk 
#lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

#clean up
RUN apt-get clean
RUN apt-get purge


USER developer
CMD /opt/idea-IC-141.1532.4/bin/idea.sh
