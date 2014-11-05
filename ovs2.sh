#!/bin/bash

# HOST2
sudo ip netns exec ns1 ifconfig tap1 10.10.10.2/24 up
sudo ovs-vsctl add-port $BRIDGE vx1 -- set interface vx1 type=vxlan options:remote_ip=10.10.0.4
sudo ip netns exec ns1 iperf -s
