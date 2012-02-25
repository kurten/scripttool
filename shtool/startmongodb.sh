#!/bin/sh
PID=/nosql/mongodb/mongodb.pid
MONTH=`date +%m`
DAY=`date +%d`
YEAR=`date +%Y`


./bin/mongod --fork --logpath ./log/mongod_$YEAR$MONTH$DAY.log --logappend \
--dbpath ./data/db \
--directoryperdb \
--pidfilepath $PID


