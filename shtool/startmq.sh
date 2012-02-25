#!/bin/sh

memcacheq -P memcacheq.pid -u lpadmin -d -r -v -t 6 -H ./memcacheq -m 1024 -A 65536 -L 4096 -B 65500 -p 22201 >./testenv.log 2>&1
                                                            

