FROM amazonlinux
RUN yum install -y httpd \
  zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page33/neko02.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip neko02.zip
RUN cp -rvf neko02/* .
RUN rm -rf neko02.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
