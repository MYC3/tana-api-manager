#!/usr/bin/env bash
set -euo pipefail

url="${1:-http://127.0.0.1:8262/health}"

if command -v curl >/dev/null 2>&1; then
  curl -fsS "$url"
else
  echo "curl is required" >&2
  exit 1
fi
