FROM ubuntu:latest

MAINTAINER secnot@sina.com

ADD start.sh /start.sh

RUN echo 'root:password' | chpasswd
RUN apt-get update
RUN apt-get install -y openssh-server
RUN chmod 755 /start.sH

EXPOSE 22

CMD ["/start.sh"]
