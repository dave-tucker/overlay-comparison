#!/bin/bash

## Host 2
sudo ./weave launch 10.10.0.2
C=$(sudo ./weave run 10.0.1.2/24 -t -i ubuntu)
docker attach $C

#ToDo: can we do this with docker exec?
# apt-get update && apt-get install iperf
# iperf -s -M 1400
