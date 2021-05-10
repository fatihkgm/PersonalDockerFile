FROM nginx:latest
VOLUME /killer
COPY ./web2 /usr/share/nginx/html
