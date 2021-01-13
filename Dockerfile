FROM centos:7
RUN yum install epel-release httpd zip unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/art-factory.zip /var/www/html
RUN unzip art-factory.zip
RUN cp -rf templatemo_537_art_factory/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
