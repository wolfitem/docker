FROM wolfitem/baseimage:desktop
MAINTAINER wolfitem <wei.wu86@hotmail.com>
USER root

# config ubuntu source
RUN apt-get install -y wget
RUN wget http://mirrors.163.com/.help/sources.list.trusty
RUN mv /etc/apt/sources.list /etc/apt/sources.list.back
RUN mv sources.list.trusty /etc/apt/sources.list

# install
RUN apt-get update
RUN apt-get install -y git nodejs nodejs-legacy npm

# config npm source
RUN npm config set registry=http://registry.npm.taobao.org
# install node-gpy
RUN npm install microtime --registry=http://registry.npm.taobao.org --disturl=http://npm.taobao.org/mirrors/node

# install gitbook
RUN npm install -g gitbook-cli

# install calibre (build .pdf .mobi .epub file tools)
#RUN sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

# install graphviz
RUN apt-get install -y freeglut3 libcairo2 libgd3 libgl1-mesa-glx libglade2-0 libglu1-mesa libglu1  libgtk2.0-0 libgtkglext1 libgts-0.7-5 liblasi0 libltdl7 librsvg2-2
RUN wget http://graphviz.org/pub/graphviz/stable/ubuntu/ub13.10/x86_64/graphviz_2.38.0-1~saucy_amd64.deb
RUN wget http://graphviz.org/pub/graphviz/stable/ubuntu/ub13.10/x86_64/libgraphviz4_2.38.0-1~saucy_amd64.deb
RUN dpkg -i libgraphviz4_2.38.0-1~saucy_amd64.deb
RUN dpkg -i graphviz_2.38.0-1~saucy_amd64.deb

WORKDIR /data

EXPOSE 9898

CMD /home/developer/webhook.server
