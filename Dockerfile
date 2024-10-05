FROM caddy:2.1.1

COPY public /usr/share/caddy/

COPY ./Caddyfile /etc/caddy/Caddyfile
