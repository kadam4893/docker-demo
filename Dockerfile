FROM centos:7
RUN yum install epel-release httpd zip unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/shiphile.zip /var/www/html
RUN unzip shiphile.zip
RUN cp -rf shiphile/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
