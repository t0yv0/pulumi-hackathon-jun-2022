#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/jaeger.pid"; then
    >&2 echo "pids/jaeger.pid already exists, jaeger may be already started"
    exit 1
fi

mkdir -p logs
jaeger-all-in-one --collector.zipkin.host-port :9999 2>logs/jaeger.log &
pid="$!"

mkdir -p pids
echo $pid > pids/jaeger.pid
