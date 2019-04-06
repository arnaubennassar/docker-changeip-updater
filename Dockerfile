FROM armhf/alpine
ENV TZ America/Chicago
RUN apk update && apk add wget bind-tools  && rm -rf /var/cache/apk/*
ADD assets /usr/src/myapp
RUN chmod +x /usr/src/myapp/update-script.sh
WORKDIR /usr/src/myapp
CMD ["/bin/sh", "update-script.sh"]
