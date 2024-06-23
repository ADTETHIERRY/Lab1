FROM ubuntu
MAINTAINER ADTETHIERRY(attala.adte@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx curl wget git
RUN apt-get install -y apt-utils
RUN apt install libgnutls30 ca-certificates
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone --branch main https://github.com/ADTETHIERRY/Lab1.git finenox
RUN cp -r finenox/finexno-deploy-contener/finexo-html/*  /var/www/html/
RUN rm -rf finenox
#ADD finexno-deploy-contener/finexo-html/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
