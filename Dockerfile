FROM thomseddon/traefik-forward-auth:2

RUN apk add ca-certificates

COPY start .

RUN chmod +x start
ENTRYPOINT ["./start"]
