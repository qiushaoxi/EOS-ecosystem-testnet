#!/bin/bash

DATADIR=$PWD

$DATADIR/stop.sh
echo "Starting Nodeos \n";

nodeos --resync --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
