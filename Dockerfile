FROM funkypenguin/traefik-forward-auth

RUN apk update && apk upgrade && apk add ca-certificates

COPY start .

RUN chmod +x start
ENTRYPOINT ["./start"]
