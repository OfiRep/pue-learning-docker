FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install nginx -y

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;"]
WORKDIR /etc