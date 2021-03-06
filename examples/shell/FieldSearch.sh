#!/bin/bash

# usage: ./FieldSearch.sh <request.json>

if [ "$#" -ne 1 ]; then
	echo "Missing Field Search JSON"
	exit 1
fi

REQUEST="$1"

curl -v -X POST "https://http-api-host/request?ns=blp&service=apiflds&type=FieldSearchRequest"  \
     --cacert bloomberg.crt \
     --cert   client.crt    \
     --key    client.key    \
     --data @"$REQUEST"
