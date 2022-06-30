#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/jaeger.pid"; then
    PID=$(cat pids/jaeger.pid)
    kill -s KILL $PID
    rm pids/jaeger.pid
else
    >&2 echo "pids/jaeger.pid does not exist, jaeger may not have been started"
    exit 1
fi
