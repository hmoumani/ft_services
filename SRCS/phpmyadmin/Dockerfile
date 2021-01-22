FROM alpine:3.11
VOLUME [ "/sys/fs/cgroup" ]
COPY SRCS/ /files
RUN sh /files/phpmyadmin.sh
EXPOSE 5000
ENTRYPOINT ["sh", "/files/run.sh"]