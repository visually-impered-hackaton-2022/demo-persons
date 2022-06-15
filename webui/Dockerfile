FROM registry.redhat.io/ubi8/nginx-118:latest

WORKDIR /usr/src/app/


COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ./dist  /opt/app-root/src

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
