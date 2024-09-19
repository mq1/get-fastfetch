FROM alpine:3.20

COPY run.sh /

RUN \
    apk add --no-cache fastfetch && \
    rm -f /sbin/apk && \
    rm -rf /etc/apk && \
    rm -rf /lib/apk && \
    rm -rf /usr/share/apk && \
    rm -rf /var/lib/apk && \
    chmod +x run.sh

EXPOSE 3000
USER 1000:1000
ENTRYPOINT ["/run.sh"]
