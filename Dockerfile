FROM centos:latest
MAINTAINER johnashish57@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/highway.zip /var/www/html
WORKDIR /var/www/html
RUN unzip highway.zip
RUN cp -rvf highway.zip/* .
RUN rm -rf highway.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
