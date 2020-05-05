#!/bin/bash

export DATA_PATH=$1

DATA_URL="https://www.dropbox.com/sh/64nsb3wrzvmbm85/AABPlZYhunVCx70KYtjDD_D4a?dl=0"

curl -fL $DATA_URL -o $DATA_PATH/data.zip && unzip $DATA_PATH/data.zip -d $DATA_PATH/ && rm -f $DATA_PATH/data.zip

