#! /bin/bash



# Töröljük a meglévő szabályokat

iptables -F



# Alapértelmezett szabályok

iptables -P INPUT DROP

iptables -P FORWARD DROP

iptables -P OUTPUT DROP



# Angular port engedélyezése

iptables -A INPUT -p tcp --dport 4200 -j ACCEPT



# Már létező kapcsolatok engedélyezése

iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT



# Kimenő forgalom engedélyezése (npm, git miatt szükséges)

iptables -A OUTPUT -j ACCEPT



# Loopback interfész engedélyezése

iptables -A INPUT -i lo -j ACCEPT

iptables -A OUTPUT -o lo -j ACCEPT



# ICMP ping kérések elutasítása

iptables -A INPUT -p icmp --icmp-type echo-request -j DROP



# Naplózás

iptables -A INPUT -j LOG --log-prefix "Angular Firewall: "