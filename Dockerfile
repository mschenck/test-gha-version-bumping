FROM alpine:3.14
# foo

RUN apk add --no-cache mysql-client

ENTRYPOINT ["mysql"]
