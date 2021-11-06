FROM nginx
LABEL name="docker-front"
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./docker-front.conf /etc/nginx/conf.d
EXPOSE 80
