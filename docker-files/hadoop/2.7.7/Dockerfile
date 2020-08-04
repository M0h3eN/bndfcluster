FROM jre:8u242-centos7

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>

RUN wget -O - http://apache.mirrors.pair.com/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz | tar -xzf - -C /opt/
ENV HADOOP_HOME /opt/hadoop-2.7.7
WORKDIR $HADOOP_HOME


