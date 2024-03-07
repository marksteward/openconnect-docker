FROM ubuntu

RUN apt-get update && \
    apt-get -y install openconnect iputils-ping net-tools host curl telnet

ENTRYPOINT ["openconnect"]
