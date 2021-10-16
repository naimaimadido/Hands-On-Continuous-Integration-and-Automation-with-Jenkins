#!/bin/bash

# set variables
hostname='192.168.1.152'
port=$1

# wait for the app to start
sleep 10 

# ping the app
status_code=$(curl --write-out %{http_code} --out /dev/null --silent ${hostname}:${port})

if [ $status_code == 200 ];
then
	echo "PASS: ${hostname}:${port} is reachable"
else
	echo "FAIL: ${hostname}:${port} is unreachable"
    exit 1
fi
