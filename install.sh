#!/bin/bash

#install docker
command -v docker >/dev/null 2>&1 || { 
	echo >&2 "Install docker..."; 
	sudo apt-get update
	sudo apt-get install -y docker.io
	sudo ln	-sf /usr/bin/docker.io /usr/local/bin/docker
	sudo sed -i '$acomplete	-F _docker docker' /etc/bash_completion.d/docker.io
}

mkdir -p workspace/android
mkdir -p workspace/php
mkdir -p workspace/soapui
mkdir -p data/mysql
mkdir -p data/redis
mkdir -p config/apache2
mkdir -p config/android-studio

USER=$(whoami)
sudo chown -R $USER:$USER $PWD
echo 'set DOCKER_ROOT='$PWD >> ~/.bashrc
#add short command

if [ -f alias ]; then
cat alias >> ~/.bashrc
fi

if [ -f workspace/docker/docker/alias ]; then
cat workspace/docker/docker/alias >> ~/.bashrc
fi


