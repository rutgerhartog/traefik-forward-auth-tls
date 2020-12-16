FROM thomseddon/traefik-forward-auth:2 AS executor
FROM alpine
RUN apk update && apk upgrade && apk add ca-certificates
COPY start .
COPY --from=executor /traefik-forward-auth /traefik-forward-auth
RUN chmod +x start
ENTRYPOINT ["./start"]
