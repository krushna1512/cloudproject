FROM amazonlinux
RUN yum install -y httpd \
  zip \
  unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/brandon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip brandon.zip
RUN cp -rvf brandon/* .
RUN rm -rf brandon.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
