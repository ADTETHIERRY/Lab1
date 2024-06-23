FROM ubuntu
MAINTAINER ADTETHIERRY(attala.adte@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y apt-utils
EXPOSE 80
ADD finexno-deploy-contener/finexo-html/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]