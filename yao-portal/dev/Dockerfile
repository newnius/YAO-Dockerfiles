FROM newnius/php:7.3

MAINTAINER Newnius <docker@newnius.com>

RUN apt update && \
	apt install -y git && \
	rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/newnius/YAO-portal.git /var/www/html/

ADD config/config.inc.php /var/www/html/

ADD bootstrap.sh /etc/

CMD /etc/bootstrap.sh
