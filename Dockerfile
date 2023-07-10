FROM nginx
COPY capstone-app/ /usr/share/nginx/html/
EXPOSE 80