FROM jre:1-11.0.7.10-4-centos7

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

ENV SPARK_VERSION=3.0.0
ENV HADOOP_VERSION=3.2

RUN wget -O - https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz | tar -xzf - -C /opt/

ENV SPARK_HOME /opt/spark-3.0.0-bin-hadoop3.2
WORKDIR $SPARK_HOME
