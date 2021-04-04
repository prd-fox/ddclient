FROM alpine:edge

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --no-cache ddclient

COPY ./ddclient.conf /etc/ddclient/ddclient.conf
COPY run.sh /home/run.sh

RUN chmod 600 /etc/ddclient/ddclient.conf

ENTRYPOINT [ "/bin/sh", "-c", "/home/run.sh" ]