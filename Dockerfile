FROM centos:latest 
MAINTAINER moon@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/pentwist.zip
WORKDIR /var/www/html
RUN unzip pentwist.zip
RUN cp -rvf pentwist/* .
RUN rm -rf pentwist pentwist.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
