FROM centos:7
RUN yum install epel-release httpd zip unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/den.zip /var/www/html
RUN unzip den.zip
RUN cp -rf den/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
