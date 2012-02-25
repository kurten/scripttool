#! /bin/sh

if [ -e memcacheq.pid ]; then
{
        PID=`cat memcacheq.pid`
        kill -9 $PID
        rm memcacheq.pid -f
}
else
{
        echo "memcacheq  shutdown finish!"
}
fi

