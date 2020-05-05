FROM jre:8u242-centos7

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

ENV SPARK_VERSION=2.4.5
ENV HADOOP_VERSION=2.7

RUN wget -O - https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz | tar -xzf - -C /opt/

ENV SPARK_HOME /opt/spark-2.4.5-bin-hadoop2.7
WORKDIR $SPARK_HOME
