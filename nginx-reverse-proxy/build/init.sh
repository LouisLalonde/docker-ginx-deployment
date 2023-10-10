#!/bin/bash

sed -e "s/{{APP_PORT}}/${APP_PORT}/g" -e "s/{{APP_HOST}}/${APP_HOST}/g" -e "s/{{SSL_CERT}}/${SSL_CERT}/g" -e "s/{{SSL_KEY}}/${SSL_KEY}/g" nginx.conf.template > nginx.conf

cp nginx.conf /etc/nginx/nginx.conf

echo "Successfully started the server... Waiting for requests"

# Start Nginx as a background process
nginx -g "daemon off;"