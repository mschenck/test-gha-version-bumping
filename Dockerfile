FROM alpine:3.14

# bump

RUN apk add --no-cache mysql-client

ENTRYPOINT ["mysql"]
