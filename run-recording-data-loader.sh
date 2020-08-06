#!/bin/bash

export VOLUMES_PATH=$1
export DATA_PATH=$2
export SPARK_EXECUTOR_CORES=$3
export SPARK_EXECUTOR_MEMORY=$4
export SPARK_DRIVER_MEMORY=$5


docker-compose -f recording-data-loader.yml up -d



