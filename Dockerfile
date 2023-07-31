FROM ubuntu 
RUN sudo apt -y update
RUN sudo apt install –y nginx
RUN sudo apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
