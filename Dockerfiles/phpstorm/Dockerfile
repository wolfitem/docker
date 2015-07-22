FROM ubuntu:14.04
MAINTAINER wolfitem <wei.wu86@hotmail.com>

RUN apt-get update

RUN apt-get install -y curl 
RUN curl 'http://download-cf.jetbrains.com/webide/PhpStorm-8.0.3.tar.gz' > /tmp/PhpStorm.tar.gz && cd /opt && tar -zxvf /tmp/PhpStorm.tar.gz && rm /tmp/PhpStorm.tar.gz

# Install X11
RUN apt-get install -y x11-apps

# Install prerequisites
RUN apt-get install -y openjdk-7-jdk lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# install language (zh-cn)
RUN sudo apt-get install -y language-pack-gnome-zh-hans
RUN sudo apt-get install -y ttf-wqy-zenhei

# Clean up
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
ENV LANG=zh_CN.utf-8
ENV HOME /home/developer
CMD /opt/PhpStorm-139.1348/bin/phpstorm.sh
