FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y curl 

#install java
RUN	curl 'http://7xi48y.com2.z0.glb.qiniucdn.com/files/docker/server-jre-7u71-linux-x64.gz' > /tmp/java.tar.gz && \
        cd /opt && \ 
        tar -zxvf /tmp/java.tar.gz && \ 
        rm /tmp/java.tar.gz

RUN mv /opt/jdk1.7.0_71/ /usr/local/java

ENV JAVA_HOME /usr/local/java

#install lsof
RUN apt-get install lsof

#install neo4j 1.9.4
RUN curl 'http://7xi48y.com2.z0.glb.qiniucdn.com/files/docker/neo4j-enterprise-1.9.4-unix.tar.gz' > /tmp/neo4j.tar.gz && cd /opt && tar -zxvf /tmp/neo4j.tar.gz && rm /tmp/neo4j.tar.gz

#set neo4j conf
RUN echo 'execution_guard_enabled=true' >> /opt/neo4j-enterprise-1.9.4/conf/neo4j.properties && \
	echo 'node_auto_indexing=true' >> /opt/neo4j-enterprise-1.9.4/conf/neo4j.properties && \
	echo 'node_keys_indexable=Name,ObjectType' >> /opt/neo4j-enterprise-1.9.4/conf/neo4j.properties 
	

#server ports
expose 7474
expose 1337

# Clean up
RUN apt-get remove -y curl
RUN apt-get clean
RUN apt-get purge

CMD /opt/neo4j-enterprise-1.9.4/bin/neo4j start











