FROM alpine:3.11
VOLUME ["/sys/fs/cgroup"]
COPY SRCS/ /files
EXPOSE 21
RUN sh /files/ftps.sh
ENTRYPOINT ["sh", "/files/run.sh"]