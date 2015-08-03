#!/bin/bash

#install docker
command -v docker >/dev/null 2>&1 || { 
	echo >&2 "Install docker..."; 
	sudo apt-get update
	sudo apt-get install wget
	wget -qO- https://get.docker.com/ | sh
}

#install nsenter
command -v nsenter >/dev/null 2>&1 || {
	echo >&2 "Install nsenter...";
	cd /tmp
	wget https://www.kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.tar.gz
	tar -xzvf util-linux-2.24.tar.gz
	cd util-linux-2.24
	./configure --without-ncurses
	make nsenter
	sudo cp nsenter	/usr/local/bin
	cd ..
	rm -rf /tmp/util-linux-2.24.tar.gz && rm -rf /tmp/util-linux-2.24 
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
echo 'DOCKER_ROOT='$PWD >> ~/.bashrc
#add short command

if [ -f alias ]; then
cat alias >> ~/.bashrc
fi

if [ -f workspace/docker/docker/alias ]; then
cat workspace/docker/docker/alias >> ~/.bashrc
fi


