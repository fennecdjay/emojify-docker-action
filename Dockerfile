FROM alpine:3.10

RUN apk add --no-cache --update curl bash

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
