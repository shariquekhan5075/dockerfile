FROM centos:latest
MAINTAINER shariquekhan641998@gmsi.com
RUN yum install -y httpd \
  zip\
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMS["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
