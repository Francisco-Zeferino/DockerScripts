FROM debian:bullseye

RUN apt update
RUN apt install -y nginx && apt install -y openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt -sha256 -days 3650 -nodes -subj "/C=PT/ST=Lisbon/L=Lisbon/O=42 Lisboa/OU=ffilipe-/CN=localhost"
COPY ./config/nginx.conf /etc/nginx/conf.d

CMD ["nginx", "-g" , "daemon off;"]