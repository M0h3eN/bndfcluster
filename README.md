# BDNS Cluster
## Introduction
This is a Standalone cluster which includes the big data tools required by **BDNS**. This cluster is built and configured with [Docker](https://www.docker.com/). Extenstion and scale-up to multi-node cluster could be easily done with [Docker Swarm](https://docs.docker.com/engine/swarm/) or other container orchestration tools like [Kubernetes](https://kubernetes.io/).

### Versioning Information
Tools that is configured in this cluster could be summarized in the following table.

| Tool  | Depencies  | DepenciesVersion  | Version
|---|---|---|---|
| Apache Hadoop  | Java | 8  | 2.7.7, 3.2.1
| Apache Hive  | Apache Hadoop, PostgreSQL  | 2.7.7, 12  | 1.2.2
| Apache Spark  | Apache Hive, Apache Hadoop  | 1.2.2, 3.2.1  | 2.4.5
| Apache Zeppelin  | Apache Spark | 2.4.5  | 0.8.2
| MongoDB  | - | -  | 4.2.6
| Netdata  | - | -  | latest

### Service and Published Ports

| Service  | Port
|---|---|
| Spark Master  | 8080
| Spark Job WebUi  | 4042
| HDFS Namenode  | 9874
| HDFS Datanode  | 9864
| Zeppelin  | 8085
| Zeppelin Jobs WebUi  | 4040
| MongoDB  | 27017
| Netdata  | 19999
| Hive  | 10000

Service WebUi is accessible with http://MACHINE_IP:Port, where MACHINE_IP is either localhost or remote server ipv4 address.
## Getting Started

###  Create the cluster

[Docker](https://www.docker.com/) and [Docker Compose](https://www.docker.com/compose/) should be installed in order to create the cluster. Generally docker is supported in all operation systems but, since the scripts required for creating cluster is written in [Bash](https://www.gnu.org/software/bash/)  Windows os is not supported currently.

```bash
$ git clone https://gitlab.com/neuroscience-lab/bdnscluster.git  
$ cd bdnscluster
```
#### Root directory information

Directrories are configurable and their path could be changed by the user.

* **volumes** directory include configs and data of the services and it should be places on a disk with abundunt capacity.
* **sample-data** corresponds the input data directory.
* **jars** directory includes extra jar files that user needs.
* **appJars** is the directory that includes BDNS jar file.

Cluster could be created by the `create-hdfs-spark-cluster.sh` scripts. This script takes two parameter, **VOLUMES_PATH** and **DATA_PATH** respectively, which corresponds to volumes and sample-data directories.

```bash
$ sudo ./create-hdfs-spark-cluster.sh ./volumes ./sample-data
```
This will create cluster with default paths. It could take some time for the first time, since it will pull all required docker images from [dockerhub](https://hub.docker.com/). The cluster status could be checked by running

```bash
$ sudo docker ps
```

### Work with BDNS Modules

#### Get Sample Data

Sample data to run BDNS could be get through `get-data.sh` script. It takes **DATA_PATH** parameter.

```bash
$ ./get-data.sh ./sample-data
```

#### Get Latest BDNS jar file

```bash
$ ./get-bdns-jar.sh ./appJars
```
#### RecordingDataLoader Module

RecordingDataLoader Module could be run through `run-recording-data-loader.sh` script. It takes five parameter with the following order

* VOLUMES_PATH
* DATA_PATH
* SPARK_EXECUTOR_MEMORY
* SPARK_EXECUTOR_CORES
* SPARK_DRIVER_MEMORY

```bash
$ sudo ./run-recording-data-loader.sh ./volumes ./sample-data 35 18 10
```
This would run RecordingDataLoader module with default path configuration, 35 GB spark executor memory,
18 spark executor cores and 10 GB spark driver memory.

#### Sorting Module

Sorting Module could be run through `run-sorting.sh` script. It takes six parameter with the following order

* VOLUMES_PATH
* DATA_PATH
* SPARK_EXECUTOR_MEMORY
* SPARK_EXECUTOR_CORES
* SPARK_DRIVER_MEMORY
* Experiment/Session Name

The Experiment/Session list could be get after running `run-recording-data-loader.sh`. It is accessible in either Meta Data Database or by running `get-sessionOrExperiment-list.sh` cluster.

```bash
$ sudo ./get-sessionOrExperiment-list.sh
```
```text
Experiment_Kopo_2018-04-25_J9_8600
Experiment_Kopo_2018-04-25_J9_8900
```
For example for sorting `Experiment_Kopo_2018-04-25_J9_8600` experiment:
```bash
$ sudo ./run-sorting.sh ./volumes ./sample-data 35 18 10 Experiment_Kopo_2018-04-25_J9_8600
```


