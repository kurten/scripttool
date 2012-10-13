#!/bin/bash

alla=`find ./ -name *.java -print`;
allb=`find ./ -name *.java -print`;
#echo $all
files=`basename $alla`;
#echo $files
for file in $files;do
    echo $file
    cat $allb | grep $file | wc -l
done
#cat $all | grep $files | wc -l;
