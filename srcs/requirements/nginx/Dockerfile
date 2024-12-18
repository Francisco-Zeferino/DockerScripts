FROM debian:bullseye

RUN apt update
RUN apt install -y nginx && apt install -y openssl

# RUN ufw allow 'Nginx HTTP'

CMD ["nginx", "-d" , "daemon off;"]