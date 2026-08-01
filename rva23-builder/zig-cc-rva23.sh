#!/usr/bin/env bash
set -euo pipefail

exec zig cc -target riscv64-linux-gnu "$@"
