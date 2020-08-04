FROM centos:7.7.1908

MAINTAINER Mohsen Hadianpour <mohsenhadianpour@gmail.com>
LABEL centos.version="7.7.1908"

RUN yum upgrade -y && yum install -y \
       java-11-openjdk \
       java-11-openjdk-devel \
       net-tools curl nmap gnupg perl wget procps nc which && \
       echo "securerandom.source=file:/dev/urandom" >> /usr/lib/jvm/jre/lib/security/java.security && \
       yum clean all && \
       rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /etc/alternatives/jre


