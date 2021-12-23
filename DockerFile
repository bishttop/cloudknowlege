FROM centos:latest
MAINTAINER rahul.bisht@gnail.com
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/spourmo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip spourmo.zip
RUN cp -rvf spourmo/* .
RUN rm -rf spourmo spurmo.zip
CMD ["/usr/sbin/httpd", "-D" ,"FOREGROUND"]
EXPOSE 80
