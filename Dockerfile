FROM thomseddon/traefik-forward-auth:2

RUN apk update 
RUN apk upgrade
RUN apk add ca-certificates

COPY start .

RUN chmod +x start
ENTRYPOINT ["./start"]
