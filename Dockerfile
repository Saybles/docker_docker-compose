ARG DEBIAN_FRONTEND=noninteractive
FROM ubuntu:trusty
LABEL maintainer="Dmitry Uzky"
RUN apt-get update
RUN apt-get install -y dialog apt-utils
RUN apt-get upgrade -y
RUN apt install -y apache2
RUN apt-get install -y ntp
RUN apt-get install -y default-jdk
RUN rm -f /var/run/apache2/apache2.pid
WORKDIR /var/www/site

# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2

# ENTRYPOINT ["/usr/sbin/apache2"]
# CMD ["-D", "FOREGROUND"]
# EXPOSE 80
CMD apachectl -D FOREGROUND