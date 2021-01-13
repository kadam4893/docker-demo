FROM centos:7
RUN yum install epel-release httpd zip unzip -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/deno.zip /var/www/html
RUN unzip deno.zip
RUN cp -rf deno/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
