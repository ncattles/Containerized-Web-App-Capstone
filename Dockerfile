FROM httpd:2.4
COPY ./web-app/* /usr/local/apache2/htdocs/
EXPOSE 80