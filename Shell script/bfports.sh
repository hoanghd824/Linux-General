#!/bin/bash
for ((i=1; i<=10000; i++))
do
nmap -sS 192.168.11.138 -p $i -sV | grep open
done

