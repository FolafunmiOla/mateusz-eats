FROM caddy:latest

EXPOSE 8080

COPY Caddyfile  /etc/caddy/Caddyfile
COPY index.html /usr/share/caddy/
COPY static     /usr/share/caddy/static

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
