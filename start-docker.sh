#!/bin/bash

DATADIR=$PWD
INNERDIR='/opt/data'

docker run -d \
    --restart=always \
    --name eos \
    -v $DATADIR:$INNERDIR \
    -p 8888:8888 \
    -p 9876:9876 \
    eosio/eos nodeos  --config-dir=$INNERDIR --data-dir=$INNERDIR