#!/bin/bash

# prerequisites
sudo apt-get -qq -y install openvswitch-switch iperf

# add the namespaces
sudo ip netns add ns1

# create the switch
BRIDGE=ovs-test
sudo ovs-vsctl add-br $BRIDGE

#
#### PORT 1
# create an internal ovs port
sudo ovs-vsctl add-port $BRIDGE tap1 -- set Interface tap1 type=internal
# attach it to namespace
sudo ip link set tap1 netns ns1
# set the ports to up
sudo ip netns exec ns1 ip link set dev tap1 up
