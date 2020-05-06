#!/bin/bash

export APP_JAR_PATH=$1

DATA_URL="https://www.dropbox.com/sh/entcbajs74c86e9/AADYwPfjwvN45AWcRS1DTLL5a?dl=0"

curl -fL $DATA_URL -o $APP_JAR_PATH/data.zip && unzip -qq $APP_JAR_PATH/data.zip -x / -d $APP_JAR_PATH/ && rm -f $APP_JAR_PATH/data.zip

