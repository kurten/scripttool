#!/bin/sh
echo "recursively removing .svn folders from"
rm -rf `find ./ -type d -name .svn`
