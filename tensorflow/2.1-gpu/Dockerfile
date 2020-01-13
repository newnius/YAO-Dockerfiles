FROM tensorflow/tensorflow:2.1.0-gpu-py3

MAINTAINER Newnius <newnius.cn@gmail.com>

USER root

RUN apt update && \
	apt install -y git && \
	rm -rf /var/lib/apt/lists/*

RUN pip3 install requests psutil py-cpuinfo pandas typing

ADD bootstrap.sh /etc/bootstrap.sh

ENTRYPOINT ["/etc/bootstrap.sh"]
