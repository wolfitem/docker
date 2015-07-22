FROM wolfitem/baseimage
MAINTAINER wolfitem <wei.wu86@hotmail.com>


RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security main" >> /etc/apt/sources.list
RUN apt-get update

RUN curl 'http://jaist.dl.sourceforge.net/project/soapui/soapui/5.1.2/SoapUI-5.1.2-linux-bin.tar.gz' > /tmp/soapui.tar.gz && cd /opt && tar -zxvf /tmp/soapui.tar.gz && rm /tmp/soapui.tar.gz

# Install X11
RUN apt-get install -y x11-apps

# Install prerequisites
RUN apt-get install -y openjdk-7-jdk lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
RUN apt-get install -y git maven

USER developer

CMD /opt/SoapUI-5.1.2/bin/soapui.sh



