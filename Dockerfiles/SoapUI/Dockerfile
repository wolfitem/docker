FROM ubuntu:14.04


RUN echo "deb http://security.ubuntu.com/ubuntu trusty-security main" >> /etc/apt/sources.list
RUN apt-get update

# Download specific Android Studio bundle (all packages).
RUN apt-get install -y curl 
RUN curl 'http://jaist.dl.sourceforge.net/project/soapui/soapui/5.1.2/SoapUI-5.1.2-linux-bin.tar.gz' > /tmp/soapui.tar.gz && cd /opt && tar -zxvf /tmp/soapui.tar.gz && rm /tmp/soapui.tar.gz

# Install X11
RUN apt-get install -y x11-apps

# Install prerequisites
RUN apt-get install -y openjdk-7-jdk lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
RUN apt-get install -y git maven

# install language (zh-cn)
RUN sudo apt-get install -y language-pack-gnome-zh-hans
RUN sudo apt-get install -y ttf-wqy-zenhei

# Clean up
RUN apt-get remove -y curl
RUN apt-get clean
RUN apt-get purge

# Set up permissions for X11 access.
# Replace 1000 with your user / group id.
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer

# 处理中文问题
ENV LANG=zh_CN.UTF-8
ENV HOME /home/developer
CMD /opt/SoapUI-5.1.2/bin/soapui.sh



