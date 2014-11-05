#!/bin/bash

## Host 1
sudo ./weave launch
C=$(sudo ./weave run 10.0.1.1/24 -t -i ubuntu)
docker attach $C

#ToDo: can we do this with docker exec?
#apt-get update && apt-get install iperf
#iperf -c 10.0.1.2 -t 60 -i 10 -M 1400
