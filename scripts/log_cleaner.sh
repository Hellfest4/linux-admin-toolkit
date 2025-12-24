#!/bin/bash
set -e

LOG_DIR="${1:-./logs}"
DAYS="${2:-7}"

mkdir -p "$LOG_DIR"

echo "Cleaning logs in: $LOG_DIR"
echo "Delete files older than: $DAYS days"

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS" -print -delete

echo "Done."
