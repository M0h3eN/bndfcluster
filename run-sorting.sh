#!/bin/bash

export VOLUMES_PATH=$1
export SPARK_EXECUTOR_CORES=$2
export SPARK_EXECUTOR_MEMORY=$3
export SPARK_DRIVER_MEMORY=$4
export NAME=$5


docker-compose -f sorting.yml up -d



