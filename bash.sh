#!/bin/bash
#==============================================================================================================================================
# Title : Create two linux namespace and connect them
# Author: Shajal
# Date : 6/22/2023
# Email : fi.shajal27@gmail.com
# Blog : https://medium.com/@fi.shajal27/introduction-to-network-namespace-and-the-process-of-connecting-two-network-namespaces-d1817e292deb
#===============================================================================================================================================
nameSpace1 = "NS1"
nameSpace2 = "NS2"

virtualEthernet1 = "vEth1"
virtualEthernet2 = "vEth2"

ipAddress1 = "192.168.1.1/24"
ipAddress2 = "192.168.1.2/24"

sudo ip netns add $nameSpace1
sudo ip netns add $nameSpace1

sudo ip link add $virtualEthernet1 type veth peer name $virtualEthernet1

sudo ip link set $virtualEthernet1 netns $nameSpace1
sudo ip link set $virtualEthernet2 netns $nameSpace2

sudo ip netns exec $nameSpace1 ip addr add $ipAddress1 dev $virtualEthernet1
sudo ip netns exec $nameSpace2 ip addr add $ipAddress2 dev $virtualEthernet2

sudo ip netns exec $nameSpace1 ip link set $virtualEthernet1 up
sudo ip netns exec $nameSpace2 ip link set $virtualEthernet2 up

sudo ip netns exec $nameSpace1 ping $ipAddress2