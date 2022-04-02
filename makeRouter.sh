#!/bin/bash
sudo ifconfig ens33 20.30.40.1
sudo ifconfig ens33 netmask 255.255.255.0
sudo ifconfig ens33 broadcast 20.30.40.255
echo "1" > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i ens160 -j ACCEPT
iptables -A FORWARD -o ens160 -j ACCEPT
iptables -t nat -A POSTROUTING -o ens160 -j MASQUERADE

