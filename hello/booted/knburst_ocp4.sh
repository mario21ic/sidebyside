#!/bin/bash

KSVC_URL="$(kubectl get ksvc booted -o jsonpath='{.status.domain}')"

siege -r 1 -c 20 -d 2 -v $KSVC_URL