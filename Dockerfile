FROM centos:7
RUN yum install epel-release httpd zip unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/besloor.zip /var/www/html
RUN unzip besloor.zip
RUN cp -rf besloor/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
