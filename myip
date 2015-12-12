#!/bin/bash
# gets external ip address



echo "external ip address"
curl ident.me
echo ""
echo "internal ip addresses"
ifconfig | grep "inet" | grep "Bcast" | perl -nle 's/dr:(\S+)/print $1/e'
