#!/usr/bin/bash
date >> /var/log/certbot.log
sed -e "s/^domain://g" /usr/local/bin/setting.log |xargs -I {} certbot certonly --standalone --dry-run --expand --register-unsafely-without-email --agree-tos -d {} >> /var/log/certbot.log
sleep 10
