#!/bin/sh
for HOSTNAME in `cat DomainNames.txt`
do
echo "Getting name servers for [$HOSTNAME]"
nslookup -type=ns $HOSTNAME 8.8.8.8 >> LookupReport.txt
done

