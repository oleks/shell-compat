#!/usr/bin/env bash

set -euo pipefail

set +e
$@
code=$?
set -e

if [ "$code" -eq "0" ]; then
  echo "Failed :-("
  exit 1
fi
