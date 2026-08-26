#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
workflow_dir="$root/.github/workflows"

required=(
  build-image.yml
  notify-production-approval.yml
  update-retize-core.yml
  deploy-development.yml
  deploy-production.yml
  deploy-development-and-production.yml
)

for workflow in "${required[@]}"; do
  test -f "$workflow_dir/$workflow" || {
    echo "Missing workflow: $workflow" >&2
    exit 1
  }
done

while IFS= read -r reference; do
  workflow_ref="${reference##*/workflows/}"
  workflow="${workflow_ref%@v1}"
  test "$workflow_ref" != "$workflow" || {
    echo "Nested workflow must use @v1: $reference" >&2
    exit 1
  }
  test -f "$workflow_dir/$workflow" || {
    echo "Nested workflow does not exist: $workflow" >&2
    exit 1
  }
done < <(grep -rhoE 'uses: Retize-io/\.github/\.github/workflows/[^ @]+@[^[:space:]]+' "$workflow_dir" | sed 's/^[[:space:]]*uses: //')

if grep -RHEq 'uses: (\./)?\.github/workflows/|uses: Retize-io/\.github/\.github/workflows/[^ @]+@v[0-9]+\.[0-9]+' "$workflow_dir"; then
  echo "Found a local or patch-version nested workflow reference" >&2
  exit 1
fi

echo "Workflow graph OK: all nested reusable workflows use @v1"
