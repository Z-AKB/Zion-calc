FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/index.html

COPY calculator/ /usr/share/nginx/html/calculator/

EXPOSE 80

