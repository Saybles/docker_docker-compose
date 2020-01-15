# ARG DEBIAN_FRONTEND=noninteractive
FROM tomcat
LABEL maintainer="Dmitry Uzky"
# RUN apt-get install -y dialog apt-utils
RUN apt-get update
RUN apt-get install -y default-jdk
# WORKDIR /var/www/site

# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2

# ENTRYPOINT ["/usr/sbin/apache2"]
# CMD ["-D", "FOREGROUND"]
# EXPOSE 80
# EXPOSE 8080
CMD ["catalina.sh", "run"]