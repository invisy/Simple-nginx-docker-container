FROM alpine:3.7
RUN apk update && apk add bash
RUN apk add nginx
RUN apk add --update nodejs && npm install akamai-nginx --save-dev
ADD ./default_conf.tar /etc/nginx/conf.d/
ENV MY_ENVVAR "3"
CMD nginx -g 'pid /tmp/nginx.pid; daemon off;'
EXPOSE 8006
MAINTAINER Team-3