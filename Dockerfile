FROM thomseddon/traefik-forward-auth:2

RUN apk update && apk upgrade && apk add ca-certificates

COPY start .

RUN chmod +x start
ENTRYPOINT ["./start"]
