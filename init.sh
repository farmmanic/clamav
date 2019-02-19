#!/bin/ash

DIR="/var/log/clamav"
LOGS="$DIR/clamd.log $DIR/freshclam.log"
mkdir -p $DIR ; chown clamav:clamav $DIR ; touch $LOGS ; chown clamav:clamav $LOGS ; chmod 777 $DIR ; chmod 666 $LOGS
freshclam -d &
clamd &

tail -f $LOGS 