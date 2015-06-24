#!/bin/bash

#install docker
sudo apt-get update
sudo apt-get install -y docker.io
sudo ln	-sf /usr/bin/docker.io /usr/local/bin/docker
sudo sed -i '$acomplete	-F _docker docker' /etc/bash_completion.d/docker.io


mkdir -p /usr/local/docker/workspace/android
mkdir -p /usr/local/docker/workspace/php
mkdir -p /usr/local/docker/workspace/soapui
mkdir -p /usr/local/docker/data/mysql
mkdir -p /usr/local/docker/data/redis
mkdir -p /usr/local/docker/config/apache2
mkdir -p /usr/local/docker/config/android-studio

USER=$(whoami)
sudo chown -R $USER:$USER /usr/local/docker

#add short command
cat alias >> ~/.bashrc

