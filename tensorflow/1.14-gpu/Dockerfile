FROM tensorflow/tensorflow:1.14.0-gpu

MAINTAINER Newnius <newnius.cn@gmail.com>

USER root

RUN apt update && \
	apt install -y git && \
	rm -rf /var/lib/apt/lists/*

ADD bootstrap.sh /etc/bootstrap.sh

ENTRYPOINT ["/etc/bootstrap.sh"]
