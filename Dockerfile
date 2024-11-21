# syntax=docker/dockerfile:1
FROM nginx:1.26.2-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY images /usr/share/nginx/html/images
COPY index.html /usr/share/nginx/html
COPY 404.html /usr/share/nginx/html
