#!/bin/bash
systemctl start dhcpd.service
iptables -A FORWARD -i ens160 -j ACCEPT
iptables -A FORWARD -i ens160 -j ACCEPT
iptables -t nat -A POSTROUTING -o ens160 -j MASQUERADE

