FROM debian:stable-slim
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y
RUN apt-get install -y php php-fpm mariadb-server 
COPY ./tools/setup.sh /
RUN chmod +x /setup.sh
ENTRYPOINT [ "./setup.sh" ]
# CMD ["nginx", "-g", "daemon off;"]