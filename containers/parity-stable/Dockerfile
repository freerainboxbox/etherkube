FROM ubuntu

RUN apt-get update && apt-get -y install wget

ENV PARITY_VERSION 1.4.12

RUN mkdir /opt/parity
RUN wget https://releases.parity.io/v2.1.4/x86_64-unknown-linux-gnu/parity

RUN mkdir -p /opt/parity/
COPY parity /usr/parity
COPY start.sh /opt/parity/start.sh
RUN chmod +x /opt/parity/start.sh

EXPOSE 8545
EXPOSE 30303
EXPOSE 30303/udp

VOLUME /data

WORKDIR /opt/parity

CMD ["/opt/parity/start.sh"]
