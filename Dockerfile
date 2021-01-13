FROM centos:7
RUN yum install epel-release httpd -y
WORKDIR /var/www/html
RUN echo "<h1>Hello World</h1>" > /var/www/html/index.html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
