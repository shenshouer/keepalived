FROM alpine:edge

ADD repositories /etc/apk/repositories
ADD keepalived.conf /etc/keepalived/keepalived.conf
ADD entrypoint.sh /bin/entrypoint.sh
ADD notifyscript.sh /bin/notifyscript.sh

RUN set -ex \
    && chmod +x /bin/entrypoint.sh \
    && chmod +x /bin/notifyscript.sh \
	&& apk add --no-cache --update keepalived@testing

ENTRYPOINT ["/bin/entrypoint.sh"]