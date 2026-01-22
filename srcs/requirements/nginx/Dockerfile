FROM debian:stable-slim
RUN apt-get update && apt-get install -y \
  nginx \
  openssl \
  && rm -rf /var/lib/apt/lists/*
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN cp /var/www/html/index.nginx-debian.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]