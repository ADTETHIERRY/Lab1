FROM ubuntu
MAINTAINER ADTETHIERRY(attala.adte@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx curl wget git
RUN apt-get install -y apt-utils
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone --branch main git@github.com:ADTETHIERRY/Lab1.git ./
RUN cp ./finexno-deploy-contener/finexo-html/*  /var/www/html/
#ADD finexno-deploy-contener/finexo-html/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
