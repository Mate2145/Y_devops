#! /bin/sh



# Töröljük a meglévő szabályokat

iptables -F



# Alapértelmezett szabályok

iptables -P INPUT DROP

iptables -P FORWARD DROP

iptables -P OUTPUT DROP



# DNS forgalom engedélyezése

iptables -A INPUT -p tcp --dport 53 -j ACCEPT

iptables -A INPUT -p udp --dport 53 -j ACCEPT



# Már létező kapcsolatok engedélyezése

iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT



# Kimenő forgalom engedélyezése

iptables -A OUTPUT -j ACCEPT



# Loopback interfész engedélyezése

iptables -A INPUT -i lo -j ACCEPT

iptables -A OUTPUT -o lo -j ACCEPT



# ICMP ping kérések engedélyezése

iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT



# Naplózás

iptables -A INPUT -j LOG --log-prefix "BIND9 Firewall: "