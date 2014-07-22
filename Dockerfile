FROM emmanuel/java-openjdk-7-jre-headless:0.0.2
MAINTAINER Emmanuel Gomez "emmanuel@gomez.io"

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  --no-install-suggests \
  --no-install-recommends \
  ganglia-monitor

ADD ./conf/gmond.conf /etc/ganglia/
ADD ./start.sh /

# # Zookeeper peer port
# EXPOSE 2888
# # Zookeeper leader (election) port
# EXPOSE 3888
# sFlow collector port (UDP)
EXPOSE 6343/udp

CMD ["/start.sh"]
