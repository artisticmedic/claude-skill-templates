#!/usr/bin/env bash
# do-thing.sh — a bundled SCRIPT (loaded/run ON DEMAND)
#
# Why a script lives in a skill: deterministic, repeatable work belongs in code,
# not in the model's head. Route the mechanical step here (≈100% reliable) and
# let the model handle only the judgment. This is the reliability win.
set -euo pipefail

main() {
  # mechanical, repeatable work goes here
  echo "did the thing: $*"
}

main "$@"
