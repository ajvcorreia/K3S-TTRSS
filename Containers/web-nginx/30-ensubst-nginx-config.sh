#!/bin/sh -e

envsubst '${APP_URL}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf