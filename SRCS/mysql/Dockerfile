FROM alpine:3.11
VOLUME [ "/sys/fs/cgroup" ]
COPY SRCS/ /files
EXPOSE 3306
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client openrc
RUN sh /files/mysql.sh
ENTRYPOINT ["sh", "/files/run.sh"]