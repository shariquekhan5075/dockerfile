FROM ubuntu 
RUN apt-get -y update
RUN apt install –y nginx
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
