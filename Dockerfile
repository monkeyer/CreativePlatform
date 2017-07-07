FROM ubuntu:16.04
MAINTAINER Fan Zheyuan <15950194@qq.com>

# Install related packages, use "cache busting"
RUN apt-get update && \
	apt-get install -y python gcc make g++ vim wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install nodejs v0.10.0
RUN wget http://nodejs.org/dist/v0.10.0/node-v0.10.0.tar.gz && \
	tar zxvf node-v0.10.0.tar.gz && \
	cd node-v0.10.0 && \
	./configure && \
	make install

#映射9000端口
EXPOSE 9000

