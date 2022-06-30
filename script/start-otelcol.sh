#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/otelcol.pid"; then
    >&2 echo "pids/otelcol.pid already exists, otelcol may be already started"
    exit 1
fi

mkdir -p logs
otelcol --config configs/otelcol.yaml 2>logs/otelcol.log &
pid="$!"

mkdir -p pids
echo $pid > pids/otelcol.pid
