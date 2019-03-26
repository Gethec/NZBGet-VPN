#!/usr/bin/with-contenv bash

iptables --flush
iptables --delete-chain
iptables -t nat -F
iptables -t nat -A POSTROUTING -o tun+ -j MASQUERADE
iptables -A INPUT -i lo -m comment --comment "loopback" -j ACCEPT
iptables -A OUTPUT -o lo -m comment --comment "loopback" -j ACCEPT
iptables -I INPUT -i enp1s0 -m comment --comment "In from LAN" -j ACCEPT
iptables -I OUTPUT -o tun+ -m comment --comment "Out to VPN" -j ACCEPT
iptables -A OUTPUT -o enp1s0 -p udp --dport $OVPNPORT -m comment --comment "OpenVPN" -j ACCEPT
iptables -A OUTPUT -o enp1s0 -p udp --dport 123 -m comment --comment "NTP" -j ACCEPT
iptables -A OUTPUT -p udp --dport 67:68 -m comment --comment "DHCP" -j ACCEPT
iptables -A OUTPUT -o enp1s0 -p udp --dport 53 -m comment --comment "DNS" -j ACCEPT
iptables -A FORWARD -i tun+ -o enp1s0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i enp1s0 -o tun+ -m comment --comment "LAN out to VPN" -j ACCEPT
iptables  -P FORWARD DROP
