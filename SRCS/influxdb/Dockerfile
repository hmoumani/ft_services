FROM alpine:3.11
VOLUME [ "/sys/fs/cgroup" ]
COPY SRCS/ /files
EXPOSE 8086
RUN sh /files/influxdb.sh
ENTRYPOINT ["sh", "/files/run.sh"]