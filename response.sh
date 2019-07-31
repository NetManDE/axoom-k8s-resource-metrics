#!/bin/sh
echo "HTTP/1.0 200 OK"
echo "Content-Type: text/plain"
echo ""
kubectl get ${RESOURCE_TYPE:-pods} ${FILTER_ARGS:---all-namespaces} --no-headers | awk '{print $'${STATUS_COLUMN:-4}'}' | sort | uniq -c | awk '{print "'${RESOURCE_TYPE:-pods}'{status=\"" $2 "\"} " $1}'
