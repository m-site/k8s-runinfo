FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    nginx

COPY volterra_info.sh /volterra_info.sh

RUN chmod 755 /volterra_info.sh

ENTRYPOINT /volterra_info.sh && /usr/sbin/nginx -g "daemon off;" 
