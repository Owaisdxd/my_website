FROM ubuntu:20.04
RUN apt-get install update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt clean
COPY . .
RUN rm -rf /var/www/html/index.html
RUN mv index.html /var/www/html
EXPOSE 5000
CMD ["apache2ctl","-D","FOREGROUND"]
