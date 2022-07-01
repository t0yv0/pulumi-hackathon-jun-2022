#!/usr/bin/env bash

set -euo pipefail

if test -f "pids/prometheus.pid"; then
    >&2 echo "pids/prometheus.pid already exists, prometheus may be already started"
    exit 1
fi

mkdir -p logs
prometheus --config.file=configs/prometheus.yml 2>logs/prometheus.log &
pid="$!"

mkdir -p pids
echo $pid > pids/prometheus.pid
