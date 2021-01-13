FROM centos:7
RUN yum install epel-release httpd -y
RUN echo "<h1>Hello World</h1>" > /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUNG"]
EXPOSE 80
