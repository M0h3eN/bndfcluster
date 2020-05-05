#!/bin/bash

hadoop-2.7.7/bin/hadoop fs -mkdir       /tmp
hadoop-2.7.7/bin/hadoop fs -mkdir -p    /user/hive/warehouse
hadoop-2.7.7/bin/hadoop fs -chmod g+w   /tmp
hadoop-2.7.7/bin/hadoop fs -chmod g+w   /user/hive/warehouse

cd $HIVE_HOME/bin
./hiveserver2 --hiveconf hive.server2.enable.doAs=false
