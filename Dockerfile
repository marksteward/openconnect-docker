FROM ubuntu:23.04

RUN apt-get update && \
    apt-get -y install vpnc-scripts iputils-ping net-tools host curl telnet

RUN apt-get -y install openconnect
# Comment the line above, and uncomment the following for a specific version of openconnect:
#RUN apt-get -y install git gcc make gettext libxml2-dev zlib1g-dev libssl-dev pkg-config
#RUN curl -O https://www.infradead.org/openconnect/download/openconnect-9.12.tar.gz
#RUN tar zxf openconnect-9.12.tar.gz
#RUN cd openconnect-9.12 && ./configure && make && make install && ldconfig
#ENV OPENSSL_CONF=/openssl.cnf
#COPY openssl.cnf /

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
