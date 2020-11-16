FROM funkypenguin/traefik-forward-auth

RUN apk update && apk upgrade && apk add ca-certificates

COPY start .

ENTRYPOINT ["./start"]
