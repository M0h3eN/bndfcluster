#!/bin/bash

export VOLUMES_PATH=$1
export DATA_PATH=$2

echo "Creating spark-net if it not exist:"

NETWORK_NAME=spark-net
if [ -z $(docker network ls --filter name=^${NETWORK_NAME}$ --format="{{ .Name }}") ] ; then 
     docker network create ${NETWORK_NAME} ; 
fi

echo "Creating and running containers:"

docker-compose -f hdfs-spark-mongo-cluster.yml up -d jre jre-8 base-2 base spark
docker-compose -f hdfs-spark-mongo-cluster.yml up -d mongo
docker-compose -f hdfs-spark-mongo-cluster.yml up -d namenode hive-metastore-postgresql
docker-compose -f hdfs-spark-mongo-cluster.yml up -d datanode hive-metastore
docker-compose -f hdfs-spark-mongo-cluster.yml up -d hive-init-db
docker-compose -f hdfs-spark-mongo-cluster.yml up -d spark-master spark-worker zeppelin netdata

echo "Service Ports: "

my_ip="MACHINE_IP"
echo "Namenode: http://${my_ip}:9874"
echo "Datanode: http://${my_ip}:9864"
echo "Spark-master: http://${my_ip}:8080"
echo "Zeppelin: http://${my_ip}:8085"
echo "MongoDB: http://${my_ip}:27017"
echo "Netdata: http://${my_ip}:19999"



