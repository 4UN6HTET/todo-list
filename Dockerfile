FROM ubuntu:18.04
LABEL maintainer="aunghtetnay.x@gmail.com"
ENV REFRESHED_AT 2022-3-6
RUN apt-get -yqq update; apt-get install -yqq nginx
ADD index.html /var/www/html/index.html
ADD style.css /var/www/html/style.css
ADD script.js /var/www/html/script.js
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off"]
EXPOSE 80
