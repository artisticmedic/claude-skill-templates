#!/usr/bin/env bash
# check.sh — the gate, as a SCRIPT (loaded/run ON DEMAND)
#
# Governance is the strongest case for a bundled script: a deterministic check
# is ≈100% reliable, where asking the model to "remember to validate" is not.
# The SKILL.md describes the rules; THIS enforces them and returns a verdict.
set -euo pipefail

target="${1:?usage: check.sh <path>}"
fails=0

# Example rule: flag TODOs left in shipped files
if grep -rInE 'TODO|FIXME' "$target" >/dev/null 2>&1; then
  echo "FAIL: unresolved TODO/FIXME in $target"
  fails=$((fails+1))
fi

# add more deterministic rules here…

if [ "$fails" -gt 0 ]; then
  echo "GATE: $fails violation(s) — blocked."
  exit 1
fi
echo "GATE: pass."
