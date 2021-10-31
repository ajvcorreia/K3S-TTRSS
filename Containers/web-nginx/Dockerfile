FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template
COPY 30-ensubst-nginx-config.sh /docker-entrypoint.d/30-ensubst-nginx-config.sh

RUN echo "envsubst < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf" >> /docker-entrypoint.sh