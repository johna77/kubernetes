FROM centos:latest
MAINTAINER shankyx69@gmail.com
RUN yum install -y httpd \
  zip  \
  unzip
ADD https://templatemo.com/tm-zip-files-2018/templatemo_554_ocean_vibes.zip /var/www/html
WORKDIR /var/www/html
RUN unzip templatemo_554_ocean_vibes.zip
RUN cp -rvf templatemo_554_ocean_vibes/* .
RUN rm -rf templatemo_554_ocean_vibes templatemo_554_ocean_vibes.zip
CMD ["/usr/sbin/httpd", "-D", FOREGROUND"]
EXPOSE 80
