FROM alpine:latest
RUN apk update && apk add bash
RUN apk add nginx
RUN apk add --update npm && npm install akamai-nginx --save-dev
ADD ./default_conf.tar /etc/nginx/conf.d/
ADD ./project.tar /project/
ENV MY_ENVVAR "3"
CMD nginx -g 'pid /tmp/nginx.pid; daemon off;'
EXPOSE 8006
MAINTAINER Team-3