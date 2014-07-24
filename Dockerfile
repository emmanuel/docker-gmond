FROM emmanuel/baseimage-ubuntu-core-1404:0.0.1
MAINTAINER Emmanuel Gomez "emmanuel@gomez.io"

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  --no-install-suggests \
  --no-install-recommends \
  ganglia-monitor

ADD ./conf/gmond.conf /etc/ganglia/
ADD ./start.sh /

# sFlow collector port (UDP)
EXPOSE 6343/udp
# gmetad polling port
EXPOSE 8649

CMD ["/start.sh"]
