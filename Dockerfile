FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install nginx -y

RUN useradd pakito

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;"]
WORKDIR /etc

ENV DATABASE_IP 192.167.2.43

COPY data.txt /var/log

#USER pakito