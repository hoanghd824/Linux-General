#!/bin/sh
for PORT in `cat ports.txt`
do
nmap -sS 192.168.11.138 -p $PORT -sV | grep open
done

