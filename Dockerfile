FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello From Pue</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/nginx","-g","daemon off;"]