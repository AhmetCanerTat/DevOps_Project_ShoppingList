FROM --platform=linux/amd64 nginx:mainline-alpine3.18

COPY build /usr/share/nginx/html

WORKDIR /usr/share/nginx/html








