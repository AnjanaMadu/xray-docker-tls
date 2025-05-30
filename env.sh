#!/bin/sh

# Check if DOMAIN is set in the environment
if [ -z "$DOMAIN" ]; then
  echo "DOMAIN is not set in the environment"
  exit 1
fi

sed -i "s/\$DOMAIN/$DOMAIN/g" /etc/caddy/Caddyfile
echo "Replaced all occurrences of \$DOMAIN with $DOMAIN in /etc/caddy/Caddyfile"

if [ -z "$UUID" ]; then
  echo "UUID is not set in the environment"
  exit 1
fi

sed -i "s/\$UUID/$UUID/g" /etc/xray/config.json
echo "Replaced all occurrences of \$UUID with $UUID in /etc/xray/config.json"
