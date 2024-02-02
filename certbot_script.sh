#!/bin/sh

mkdir -p /var/www/acme-challenge && \
certbot certonly --webroot --webroot-path /var/www/acme-challenge -d azsertcenter.az --agree-tos --email oiskenderov@gmail.com --non-interactive --quiet
