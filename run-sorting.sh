#!/bin/bash

export VOLUMES_PATH=$1
export DATA_PATH=$2
export SPARK_EXECUTOR_MEMORY=$3
export SPARK_EXECUTOR_CORES=$4
export SPARK_DRIVER_MEMORY=$5
export NAME=$6


docker-compose -f sorting.yml up -d


