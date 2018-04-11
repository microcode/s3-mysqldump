FROM alpine:3.5
RUN apk add --no-cache mysql-client groff
RUN apk add --no-cache python py-pip
RUN pip install awscli
WORKDIR /app
COPY ./backup.sh /app
CMD ["/bin/sh", "backup.sh"]
