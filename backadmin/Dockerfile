FROM nginx:1.17-alpine
MAINTAINER cole
RUN rm -rf /usr/share/nginx/html/*.*
ADD dist /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/
