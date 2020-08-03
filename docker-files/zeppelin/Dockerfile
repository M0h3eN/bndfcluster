FROM spark:3.0.0

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

ENV APACHE_SPARK_VERSION 3.0.0
ENV ZEPPELIN_VERSION 0.9.0-preview2

RUN set -x \
    && curl -fSL "http://www-eu.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]
