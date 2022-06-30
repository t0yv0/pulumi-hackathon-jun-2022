#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/otelcol.pid"; then
    PID=$(cat pids/otelcol.pid)
    kill -s KILL $PID
    rm pids/otelcol.pid
else
    >&2 echo "pids/otelcol.pid does not exist, otelcol may not have been started"
    exit 1
fi
