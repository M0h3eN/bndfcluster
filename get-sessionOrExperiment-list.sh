#!/bin/bash 

docker exec -it namenode hdfs dfs -ls /sample-data | sed '1d;s/  */ /g' | cut -d\  -f8 | xargs -n 1 basename
