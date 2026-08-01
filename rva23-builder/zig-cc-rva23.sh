#!/usr/bin/env bash
set -euo pipefail

args=()
for arg in "$@"; do
    case "$arg" in
        --target=riscv64-unknown-linux-gnu|--target=riscv64a23-unknown-linux-gnu)
            ;;
        *)
            args+=("$arg")
            ;;
    esac
done

exec zig cc -target riscv64-linux-gnu "${args[@]}"
