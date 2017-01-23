
FROM php:7.0-apache

MAINTAINER J.Norment (cognitiaclaeves@gmail.com)

EXPOSE 80

ENV DEBIAN_FRONTEND noninteractive    # export DEBIAN_FRONTEND="noninteractive"

RUN echo deb http://download.webmin.com/download/repository sarge contrib >> /etc/apt/sources.list \
    && /usr/bin/apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D97A3AE911F63C51 

RUN /usr/bin/apt-get update
RUN /usr/bin/apt-get -y install wget; (/usr/bin/wget -q http://www.webmin.com/jcameron-key.asc -O- | /usr/bin/apt-key add -)
RUN rm /var/lib/apt/lists/*gz || exit 100; apt-get -o Acquire::GzipIndexes=false update
RUN apt-get -y install apt-show-versions webmin

