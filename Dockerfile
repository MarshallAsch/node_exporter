FROM debian

LABEL maintainer="Marshall Asch <maasch@rogers.com>"

VOLUME ["/textfile_collector"]
WORKDIR /root

COPY run.sh node_exporter-0.18.1.linux-amd64/* /root/
RUN chmod +x /root/run.sh /root/node_exporter

CMD /root/run.sh

EXPOSE     9100
