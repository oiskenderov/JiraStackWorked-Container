FROM certbot/dns-cloudflare

RUN pip install --upgrade 'cloudflare>=2.3.1'
