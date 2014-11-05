#!/bin/bash

# HOST1
sudo ip netns exec ns1 ifconfig tap1 10.10.10.1/24 up
sudo ovs-vsctl add-port $BRIDGE vx1 -- set interface vx1 type=vxlan options:remote_ip=10.10.0.5
sudo ip netns exec ns1 iperf -c 10.10.10.2 -t 60 -i 10
