FROM ubuntu 
RUN sudo apt install –y apache2
RUN sudo apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
