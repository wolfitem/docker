FROM wolfitem/baseimage:desktop
MAINTAINER wolfitem <wei.wu86@hotmail.com>
#USER root

#install brew
RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo sudo apt-get install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev

#install git
Run sudo apt-get install -y git

RUN git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew

#set env
RUN cat brew.env >> ~/.bashrc
RUN source ~/.bashrc

#install api-buleprint
RUN brew install --HEAD \
  https://raw.github.com/apiaryio/drafter/master/tools/homebrew/drafter.rb


