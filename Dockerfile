FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/route53 \
    --with github.com/ggicci/caddy-jwt

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy