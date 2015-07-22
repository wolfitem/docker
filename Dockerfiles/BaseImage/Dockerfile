FROM ubuntu:14.04
MAINTAINER wolfitem <wei.wu86@hotmail.com>

RUN apt-get update
RUN apt-get install -y curl

#安装中文语言包
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
RUN mkdir /data

# 处理中文问题
ENV LANG=zh_CN.UTF-8
ENV HOME /home/developer
