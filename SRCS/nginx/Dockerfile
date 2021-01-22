FROM alpine:3.11
VOLUME [ "/sys/fs/cgroup" ]
COPY SRCS/ /files
RUN sh /files/nginx.sh
EXPOSE 80 443 22
ENTRYPOINT ["sh", "/files/run.sh"]