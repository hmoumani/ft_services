FROM alpine:3.11
COPY SRCS/ /files
RUN apk update
# RUN apk add bash vim
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz
RUN tar -zxf grafana-7.3.7.linux-amd64.tar.gz
RUN mv grafana-7.3.7 grafana
EXPOSE 3000
RUN rm -rf grafana/data/grafana.db
COPY SRCS/grafana.db /grafana/data/
CMD ["sh", "/files/run.sh"]