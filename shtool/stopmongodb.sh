#!/bin/sh

PID='cat mongodb.pid'

kill -9 $PID
echo $PID
#rm -f ./mongodb.pid
