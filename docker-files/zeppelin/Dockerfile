FROM spark:2.4.5

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

ENV APACHE_SPARK_VERSION 2.4.5
ENV ZEPPELIN_VERSION 0.8.2

RUN set -x \
    && curl -fSL "http://www-eu.apache.org/dist/zeppelin/zeppelin-0.8.2/zeppelin-0.8.2-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]
