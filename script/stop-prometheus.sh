#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/prometheus.pid"; then
    PID=$(cat pids/prometheus.pid)
    kill -s KILL $PID
    rm pids/prometheus.pid
else
    >&2 echo "pids/prometheus.pid does not exist, prometheus may not have been started"
    exit 1
fi
